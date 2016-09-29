//===-- stack_deconstructor.cpp - Deconstruct the global stack into local stack
// frame ---===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements a pass that deconstruct the global stack shared by all
// the prcedures into local stack frames per procedure
//
//===----------------------------------------------------------------------===//

#define DEBUG_TYPE "stack_deconstructor"
#include "stack_deconstructor.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/TypeBuilder.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/ValueMapper.h"

using namespace llvm;
STATISTIC(StaticParentAccessChecks, "Number of static parent stack accesses");

char stack_deconstructor::ID = 0;
static RegisterPass<stack_deconstructor>
    X("stack-decons",
      "To partition global monolithic stack to per function stack frame");

/// Function :   runOnModule
/// Purpose  :   Entry point for stack_deconstructor pass
bool stack_deconstructor::runOnModule(Module &M) {
  Mod = &M;
  ctx = &M.getContext();

  for (Function &F : M) {
    if (!F.isDeclaration()) {
      max_stack_height &max_stack_height_pass =
          getAnalysis<max_stack_height>(F);
      approximate_stack_height = max_stack_height_pass.get_stack_height();
      insertlocalstack(F);
    }
  }

  // Does Transformation
  return true;
}

/// Function :    insertlocalstack
/// Purpose  :    Introduce local stack frame based on the stack size
/// approximated
///               by max_stack_height pass
///   Convert the following instructiions
///     %RSP_val = alloca i64
///     %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6
///     %7 = load i64* %RSP, !mcsema_real_eip !2
///     store i64 %7, i64* %RSP_val
///     ; All subsequesnt computations are using %RSP_val
///                 TO
///     %_local_stack_start_ptr_ = alloca i8, i64 32
///     %_local_stack_end_ptr_ = getelementptr inbounds i8, i8*
///     %_local_stack_start_ptr_, i64 32
///     %_bt_local_stack_start_ptr_ = bitcast i8* %_local_stack_start_ptr_ to
///     i64*
///     %_bt_local_stack_end_ptr_ = bitcast i8* %_local_stack_end_ptr_ to i64*
///     %_local_stack_start_ = ptrtoint i64* %_bt_local_stack_start_ptr_ to i64
///     %_local_stack_end_ = ptrtoint i64* %_bt_local_stack_end_ptr_ to i64
///     ; All subsequesnt computations are using %RSP_val
void stack_deconstructor::insertlocalstack(Function &F) {

  assert(approximate_stack_height <= 0 && "stack height cannot be positive\n");

  DEBUG(errs() << "========================\n Processing Function:"
               << F.getName() << "\n=================================\n");

  Value *current_stack_start = NULL;
  Value *current_stack_end = NULL;

  if (false ==
      createLocalStackFrame(F, &current_stack_start, &current_stack_end)) {
    return;
  }
  augmentFunctionWithParentStack(F, current_stack_start, current_stack_end);
  modifyLoadsToAccessParentStack(F, current_stack_start, current_stack_end);

  return;
}

bool stack_deconstructor::createLocalStackFrame(Function &F,
                                                Value **stack_start,
                                                Value **stack_end) {

  auto *int64_type = Type::getInt64Ty(*ctx);
  auto *ptr_to_int64_type = int64_type->getPointerTo();

  //  1. Search for the first store to RSP_val in the entry block
  //    e.g store i64 %7, i64* %RSP_val
  //  2. Replcae the stored value with the custom stack start address
  StoreInst *store_inst = NULL;
  BasicBlock &eb = F.getEntryBlock();
  bool stack_frame_deconstructed = false;
  ConstantInt *stack_height =
      ConstantInt::get(int64_type, -1 * approximate_stack_height);

  BasicBlock::iterator i = eb.begin();
  Instruction *I = &*i++;

  IRBuilder<> IRB(I);
  auto *stack_start_ptr = IRB.CreateAlloca(Type::getInt8Ty(*ctx), stack_height,
                                           "_local_stack_start_ptr_");
  std::vector<Value *> indices;
  indices.push_back(stack_height);
  auto *stack_end_ptr =
      IRB.CreateInBoundsGEP(stack_start_ptr, indices, "_local_stack_end_ptr_");
  auto *bicast_stack_start_ptr = IRB.CreateBitCast(
      stack_start_ptr, ptr_to_int64_type, "_bt_local_stack_start_ptr_");
  auto *bicast_stack_end_ptr = IRB.CreateBitCast(
      stack_end_ptr, ptr_to_int64_type, "_bt_local_stack_end_ptr_");
  *stack_start = IRB.CreatePtrToInt(bicast_stack_start_ptr, int64_type,
                                    "_local_stack_start_");
  *stack_end =
      IRB.CreatePtrToInt(bicast_stack_end_ptr, int64_type, "_local_stack_end_");

  for (BasicBlock::iterator i = eb.begin(), e = eb.end(); i != e;) {
    Instruction *I = &*i;
    i++;
    if (NULL != (store_inst = dyn_cast<StoreInst>(I))) {

      Value *ptr_operand = store_inst->getPointerOperand();
      if (ptr_operand->getName().equals("RSP_val")) {

        stack_frame_deconstructed = true;
        IRB.SetInsertPoint(store_inst);

        // Create:: store i64 %_local_stack_end_, i64* %RSP_val
        auto *new_store = IRB.CreateStore(*stack_end, ptr_operand);

        assert(true == store_inst->use_empty() &&
               "The store instr should not be having any uses");
        // Remove the actual store
        recordConverted(store_inst, new_store);
        break;
      }
    }
  }

  // At this point erase all the replcaed instrcutions
  eraseReplacedInstructions();

  return stack_frame_deconstructed;
}

/// Function :  augmentFunctionWithParentStack
/// Purpose  :  For each CallInst (to mcsema generated functions), add extra
/// actual
/// arguments %_local_stack_start_  and %_local_stack_end_ which points to the
/// start & end
/// addresses  of parent frame. Also the corresponding called function are
/// augmented with extra
/// arguments
void stack_deconstructor::augmentFunctionWithParentStack(
    Function &F, Value *current_stack_start, Value *current_stack_end) {
  for (auto FI = F.begin(), FE = F.end(); FI != FE; ++FI) {
    for (auto BBI = FI->begin(), BBE = FI->end(); BBI != BBE;) {
      Instruction *I = &*BBI++;

      if (CallInst *ci = dyn_cast<CallInst>(I)) {

        IRBuilder<> IRB(ci);

        Function *f = ci->getCalledFunction();
        if (!f->isDeclaration()) {

          Function *new_f = cloneFunctionWithExtraArgument(f);

          std::vector<Value *> arguments;
          for (auto &args : ci->arg_operands()) {
            arguments.push_back(args);
          }

          arguments.push_back(current_stack_start);
          arguments.push_back(current_stack_end);
          CallInst *new_ci = IRB.CreateCall(new_f, arguments);
          recordConverted(ci, new_ci);
        }
      }
    }
  }

  // At this point erase all the replcaed instrcutions
  eraseReplacedInstructions();

  return;
}

bool stack_deconstructor::shouldConvert(Instruction *I) {
  if (LoadInst *li = dyn_cast<LoadInst>(I)) {
    auto *ptr_operand = li->getPointerOperand();
    StringRef str = ptr_operand->getName();
    if (str.empty()) {
      return true;
      ;
    }
  }

  return false;
}

// test3
void stack_deconstructor::modifyLoadsToAccessParentStack(
    Function &F, Value *current_stack_start, Value *current_stack_end) {

  Value *parent_stack_start = NULL;
  Value *parent_stack_end = NULL;
  for (Function::arg_iterator I = F.arg_begin(), E = F.arg_end(); I != E; ++I) {
    if (I->getName() == "_parent_stack_end_ptr_") {
      parent_stack_end = &*I;
    }
    if (I->getName() == "_parent_stack_start_ptr_") {
      parent_stack_start = &*I;
    }
  }

  // If not a generated function, return
  if (NULL == parent_stack_end)
    return;

  std::vector<Instruction *> intr_to_be_transfomed;

  // Collect all the Loads/Stores to be transformed
  for (auto FI = F.begin(), FE = F.end(); FI != FE; ++FI) {
    for (auto BBI = FI->begin(), BBE = FI->end(); BBI != BBE;) {
      Instruction *I = &*BBI++;
      if (shouldConvert(I)) {
        intr_to_be_transfomed.push_back(I);
      }
    }
  }

  for (Instruction *I : intr_to_be_transfomed) {
    // DEBUG(errs() << "\nProcessing: " << *I << "\n");
    bool isLoad = false;
    Value *ptr_operand = NULL;
    Value *value_operand = NULL;
    Instruction *load_or_store_inst = I;
    auto *head_bb = I->getParent();

    if (LoadInst *li = dyn_cast<LoadInst>(load_or_store_inst)) {
      isLoad = true;
      ptr_operand = li->getPointerOperand();
    } else if (StoreInst *si = dyn_cast<StoreInst>(load_or_store_inst)) {
      isLoad = false;
      ptr_operand = si->getPointerOperand();
      value_operand = si->getValueOperand();
    } else {
      assert(0 && "The first inst of succ BB must be a Load or Store");
    }

    IRBuilder<> IRB(I);
    auto *p2i_inst =
        IRB.CreatePtrToInt(ptr_operand, Type::getInt64Ty(*ctx), "_head_p2i_");
    auto *offset = IRB.CreateBinOp(Instruction::Sub, p2i_inst,
                                   current_stack_end, "_offset_above_rbp_");
    auto *potential_parent_address =
        IRB.CreateBinOp(Instruction::Add, parent_stack_start, offset,
                        "_address_in_parent_stack_");

    auto *cond0 = IRB.CreateICmp(ICmpInst::ICMP_UGT, p2i_inst,
                                 current_stack_end, "_cond0_");

    auto *cond1 = IRB.CreateICmp(ICmpInst::ICMP_UGT, p2i_inst, parent_stack_end,
                                 "_cond1_");
    auto *cond2 = IRB.CreateICmp(ICmpInst::ICMP_ULT, p2i_inst,
                                 parent_stack_start, "_cond2_");
    auto *cond3 = IRB.CreateBinOp(Instruction::Or, cond1, cond2, "_cond3_");

    auto *cond4 = IRB.CreateICmp(ICmpInst::ICMP_ULE, potential_parent_address,
                                 parent_stack_end, "_cond4_");
    auto *cond5 = IRB.CreateBinOp(Instruction::And, cond0, cond3, "_cond5_");
    auto *cond6 = IRB.CreateBinOp(Instruction::And, cond5, cond4, "_cond6_");
    TerminatorInst *ti = SplitBlockAndInsertIfThen(cond6, I, false);

    auto *then_bb = ti->getParent();

    // Populate the Then Basic Block
    IRB.SetInsertPoint(then_bb->getTerminator());

    DEBUG(Constant *printf_func = printf_prototype(*ctx, Mod); IRB.CreateCall(
        printf_func,
        geti8StrVal(*Mod,
                    "Accessing Parent Stack [" +
                        std::to_string(StaticParentAccessChecks++) + "]\n",
                    "_debug_parent_stack_")));
    auto *parent_address = IRB.CreateBinOp(Instruction::Add, parent_stack_start,
                                           offset, "_address_in_parent_stack_");

    // Polulate the Tail Basic Block
    IRB.SetInsertPoint(load_or_store_inst);

    auto *new_phi = IRB.CreatePHI(Type::getInt64Ty(*ctx), 2);
    new_phi->addIncoming(p2i_inst, head_bb);
    new_phi->addIncoming(parent_address, then_bb);

    auto *address_ptr = IRB.CreateIntToPtr(new_phi, ptr_operand->getType(),
                                           "_address_ptr_in_parent_stack_");
    Instruction *new_load_or_store_inst = NULL;
    if (isLoad) {
      new_load_or_store_inst = IRB.CreateLoad(address_ptr, "_new_load_");
    } else {
      new_load_or_store_inst =
          IRB.CreateStore(value_operand, address_ptr, "_new_store_");
    }
    recordConverted(load_or_store_inst, new_load_or_store_inst);
  }

  // At this point erase all the replcaed instrcutions
  eraseReplacedInstructions();

  return;
}

Function *stack_deconstructor::cloneFunctionWithExtraArgument(Function *F) {
  std::vector<Type *> ArgTypes;
  ValueToValueMapTy VMap;

  for (Function::const_arg_iterator I = F->arg_begin(), E = F->arg_end();
       I != E; ++I) {
    ArgTypes.push_back(I->getType());
  }

  // extra argument
  ArgTypes.push_back(Type::getInt64Ty(*ctx));
  ArgTypes.push_back(Type::getInt64Ty(*ctx));

  // Create a new function type considering the extra argument
  FunctionType *FTy =
      FunctionType::get(F->getFunctionType()->getReturnType(), ArgTypes,
                        F->getFunctionType()->isVarArg());

  // Create the new function...
  Function *NewF = Function::Create(FTy, F->getLinkage(), F->getName());

  // Loop over the arguments, copying the names of the mapped arguments over...
  Function::arg_iterator DestI = NewF->arg_begin();
  for (Function::const_arg_iterator I = F->arg_begin(), E = F->arg_end();
       I != E; ++I) {
    DestI->setName(I->getName());
    VMap[&*I] = &*DestI;
    DestI++;
  }
  DestI->setName("_parent_stack_start_ptr_");
  DestI++;
  DestI->setName("_parent_stack_end_ptr_");
  DestI++;

  SmallVector<ReturnInst *, 8> Returns; // Ignore returns cloned.
  CloneFunctionInto(NewF, F, VMap, false, Returns, "");

  Mod->getFunctionList().push_back(NewF);

  return NewF;
}

void stack_deconstructor::recordConverted(Instruction *From, Value *To) {
  ToErase.push_back(From);
  From->replaceAllUsesWith(To);
}

void stack_deconstructor::eraseReplacedInstructions() {
  for (Instruction *E : ToErase)
    E->dropAllReferences();
  for (Instruction *E : ToErase)
    E->eraseFromParent();

  ToErase.clear();
}

Constant *stack_deconstructor::printf_prototype(LLVMContext &ctx, Module *mod) {

  FunctionType *printf_type = TypeBuilder<int(char *, ...), false>::get(ctx);

  Constant *func = mod->getOrInsertFunction(
      "printf", printf_type,
      AttributeSet().addAttribute(mod->getContext(), 1U, Attribute::NoAlias));

  if (!func) {
    assert(0 && "getOrInsertFunction returned non function");
  }
  return func;
}

Constant *stack_deconstructor::geti8StrVal(Module &M, std::string str,
                                           Twine const &name) {
  Constant *strConstant = ConstantDataArray::getString(*ctx, str.c_str());
  GlobalVariable *GVStr =
      new GlobalVariable(M, strConstant->getType(), true,
                         GlobalValue::InternalLinkage, strConstant, name);
  Constant *zero = Constant::getNullValue(IntegerType::getInt32Ty(*ctx));
  Constant *indices[] = {zero, zero};
  Constant *strVal = ConstantExpr::getGetElementPtr(strConstant->getType(),
                                                    GVStr, indices, true);
  return strVal;
}
