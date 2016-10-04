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

/// Function :  runOnModule
/// Purpose  :  Entry point for stack_deconstructor pass
bool stack_deconstructor::runOnModule(Module &M) {
  Mod = &M;
  ctx = &M.getContext();

  for (Function &F : M) {
    if (!F.isDeclaration()) {
      max_stack_height &max_stack_height_pass =
          getAnalysis<max_stack_height>(F);
      approximate_stack_height = max_stack_height_pass.get_stack_height();
      deconstructStack(F);
    }
  }

  // Does Transformation
  return true;
}

/// Function :  deconstructStack
/// Purpose  :  Introduce local stack frame based on the stack size
/// approximated by max_stack_height pass. This includes
/// 1. create local stack frame
/// 2. Passing caller stack frame to callee through arguments
/// 3. modify loads to access parent stack
void stack_deconstructor::deconstructStack(Function &F) {

  assert(approximate_stack_height <= 0 && "stack height cannot be positive\n");

  DEBUG(errs() << "========================\n Processing Function:"
               << F.getName() << "\n=================================\n");

  Value *current_stack_start = NULL;
  Value *current_stack_end = NULL;
  Value *rbp_ptr_alloca = NULL;

  if (false ==
      createLocalStackFrame(F, &current_stack_start, &current_stack_end, &rbp_ptr_alloca)) {
    return;
  }
  augmentFunctionWithParentStack(F, current_stack_start, current_stack_end, rbp_ptr_alloca);
  modifyLoadsToAccessParentStack(F, current_stack_start, current_stack_end);

  return;
}

/// Function :  createLocalStackFrame
/// Purpose  :  Convert the following instructiions
/// 
/// Task 1:
/// %RSP_val = alloca i64
/// %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6
/// %7 = load i64* %RSP, !mcsema_real_eip !2
/// store i64 %7, i64* %RSP_val
///
///                 TO
/// %RSP_ptr  = alloca i8* 
/// %RBP_ptr  = alloca i8* 
/// %_local_stack_start_ptr_ = alloca i8, i64 n
/// %_local_stack_end_ptr_ = gep inbounds i8, i8* %_local_stack_start_ptr_, i64 n
/// store i8* %_local_stack_end_ptr_ , i8** %RSP_ptr
/// 
/// Task 2:
/// Replace all uses of RSP_val with RSP_ptr
bool stack_deconstructor::createLocalStackFrame(Function &F,
                                                Value **stack_start,
                                                Value **stack_end,
                                                Value **rbp_ptr_alloca) {

  auto *int64_type = Type::getInt64Ty(*ctx);
  int8_type = Type::getInt8Ty(*ctx);
  ptr_to_int8_type = int8_type->getPointerTo();

  // Check F's argumnets are augmented with parent stack rbp pointer.
  Value *parent_stack_rbp_ptr = NULL;
  for (Function::arg_iterator I = F.arg_begin(), E = F.arg_end(); I != E; ++I) {
    if (I->getName() == "_parent_stack_rbp_ptr_") {
      parent_stack_rbp_ptr = &*I;
    }
  }

  // Performing Task 1
  ConstantInt *stack_height =
      ConstantInt::get(int64_type, -1 * approximate_stack_height);

  Instruction *I = &*(F.getEntryBlock().begin()) ;

  IRBuilder<> IRB(I);
  auto *rsp_ptr_alloca = IRB.CreateAlloca(ptr_to_int8_type, stack_height,
                                           "_RSP_ptr_");
  *rbp_ptr_alloca = IRB.CreateAlloca(ptr_to_int8_type, stack_height,
                                           "_RBP_ptr_");
  *stack_start = IRB.CreateAlloca(int8_type, stack_height,
                                           "_local_stack_start_ptr_");
  std::vector<Value *> indices;
  indices.push_back(stack_height);
  *stack_end =
      IRB.CreateInBoundsGEP(*stack_start, indices, "_local_stack_end_ptr_");
  IRB.CreateStore(*stack_end, rsp_ptr_alloca);
  if(parent_stack_rbp_ptr)
    IRB.CreateStore(parent_stack_rbp_ptr, *rbp_ptr_alloca);

  // Performing Task 2
  bool stack_deconstructed = false;
  for (auto FI = F.begin(), FE = F.end(); FI != FE; ++FI) {
    for (auto BBI = FI->begin(), BBE = FI->end(); BBI != BBE;) {
      Instruction *I = &*BBI++;
      if(shouldConvert(I)) {
        stack_deconstructed = true;
        DEBUG(errs() << "\n" << *I << "\n");
        convert(I, rsp_ptr_alloca, *rbp_ptr_alloca);
      }
    }
  }

  return stack_deconstructed;
}

bool stack_deconstructor::shouldConvert(Instruction* I) {

  if(LoadInst* LI = dyn_cast<LoadInst>(I)) {
    Value *ptr_operand = LI->getPointerOperand();  
    if (ptr_operand->getName().equals("RSP_val") || ptr_operand->getName().equals("RBP_val")) {                   
      return true;
    }
  }

  if(I->getOpcode() == Instruction::Add) {
    Value *pointer_operand = I->getOperand(0);
    Instruction *ptr_operand = dyn_cast<Instruction>(pointer_operand);
    assert(ptr_operand && "stack_deconstructor::handle_add - Check out");
    
    if(LoadInst *LI = dyn_cast<LoadInst>(ptr_operand)) {
      Value *li_ptr_operand = LI->getPointerOperand();
      if(li_ptr_operand->getName().equals("RSP_val") || li_ptr_operand->getName().equals("RBP_val")) {
        assert(0 != convertMap.count(ptr_operand) && "The pointer operand should already get converted.");
        return true;
      }
    }
    return false;
  }

  if(I->getOpcode() == Instruction::IntToPtr) {
    Value *int_operand = I->getOperand(0);
    return (0 != convertMap.count(int_operand));
  }

  if(StoreInst* SI = dyn_cast<StoreInst>(I)) {
    Value *ptr_operand = SI->getPointerOperand();
    Value *val_operand = SI->getValueOperand();


    // Ignore stores to McSema register struct fields  RSP and RBP
    // We should not handle the followings
    // 1. store i1 %259, i1* %ZF_val
    // 2. store i32 %84, i32* %85
    //  If %85 is derived from RSP_ptr or PBP_ptr, it is going to be replaced with converted instruction before 
    //  this instruction is encountered.
    //  If %84 is derived from RSP_ptr or PBP_ptr, it is NOT going to be converted.
    bool precond = ( ptr_operand->getName().equals("RSP_val") || ptr_operand->getName().equals("RBP_val"));
    if(precond) {
      // Ignore 
      //  %1 = load i64, i64* %RBP/%RSP
      //  store i64 %1, i64* %RBP_val/%RSP_val
      if(LoadInst *LI = dyn_cast<LoadInst>(val_operand)) {
        Value *ptr_operand = LI->getPointerOperand();
        if(ptr_operand->getName().equals("RSP") || ptr_operand->getName().equals("RBP")) {
          return false;
        }
      }
    }
    return precond;
  }

  return false;
}

void stack_deconstructor::convert(Instruction *I, Value *rsp_ptr_alloca, Value *rbp_ptr_alloca) {

  switch(I->getOpcode()) {
    case Instruction::Load:
      handle_load(I, rsp_ptr_alloca, rbp_ptr_alloca);
      break;
    case Instruction::Store:
      handle_store(I, rsp_ptr_alloca, rbp_ptr_alloca);
      break;
    case Instruction::Add:
      handle_add(I, rsp_ptr_alloca, rbp_ptr_alloca);
      break;
    case Instruction::Xor:
      handle_xor(I, rsp_ptr_alloca, rbp_ptr_alloca);
      break;
    case Instruction::Call:
      handle_call(I, rsp_ptr_alloca, rbp_ptr_alloca);
      break;
    case Instruction::IntToPtr:
      handle_int2ptr(I, rsp_ptr_alloca, rbp_ptr_alloca);
      break;
    default:
      llvm::errs() << *I << "\n";
      assert(0 && "Unexpected Instruction to be converted");
      break;
  }

  return;
}

/// Purpose: Helper function to convert (load i64, i64* RSP_val) to 
/// (load i8*, i8** RSP_ptr)
/// This transmation is useful to make alias analysis effective.
void stack_deconstructor::handle_load(Instruction* I, Value *rsp_ptr_alloca, Value *rbp_ptr_alloca) {
  LoadInst* LI = dyn_cast<LoadInst>(I);

  IRBuilder<> IRB(LI);
  Instruction *new_load = nullptr;
  Value *ptr_operand = LI->getPointerOperand();

  if (ptr_operand->getName().equals("RSP_val")) {                   
    new_load = IRB.CreateLoad(rsp_ptr_alloca, "_new_load_");
  } else {
    new_load = IRB.CreateLoad(rbp_ptr_alloca, "_new_load_");
  }
  recordConverted2(LI, new_load, false, false);

  return;
}

//  Case I:
//  %1 = load i64, i64* %RSP_val  
//  %2 = add i64 %1, 16
//  store i64 %2, i64* %RSP_val
//
//  While processing store, the add inst has already been converted to 
//  gep; so check convertMap.contains(store::value_operand) and its  agep
//
//  Case II: pop rbp
//  %1 = inttoptr i64 %0 to i64*  ; %O is an offset from %RSP_val
//  %2 = load i64, i64* %1  
//  store i64 %2, i64* %RBP_val
//
//  At int2ptr inst we create a bitcast and replace all used of int2ptr with that.
//  So convertMap.contains(store::value_operand) is false and we will convert the result of load to 
//  i8* ptr and store it in i8** RBP_ptr
//
//  Case III:
//  %1 = load i64, i64* RSP_val
//  %2 = add i64 %1, C
//  %3 = inttoptr i64 %2 to i64*
//  store i64 %val , i64* %3
//
//  This store will not be processed by this function. 
//  inttoptr will be converted to i8* bitcast and its uses will be replaced. 
//
void stack_deconstructor::handle_store(Instruction* I, Value *rsp_ptr_alloca, Value *rbp_ptr_alloca) {
  StoreInst* SI = dyn_cast<StoreInst>(I);
  Value *ptr_operand = SI->getPointerOperand();
  Value *val_operand = SI->getValueOperand();

  IRBuilder<> IRB(SI);

  Value *inst_before_store = nullptr;
  Instruction *new_store = nullptr;

  if(0 != convertMap.count(val_operand)) {
    Value* new_val_operand  = convertMap[val_operand];
    GetElementPtrInst *gep = dyn_cast<GetElementPtrInst>(new_val_operand);
    assert(gep && "stack_deconstructor::handle_store -> check");
    inst_before_store = gep;
  } else {
    inst_before_store = IRB.CreateIntToPtr (val_operand, ptr_to_int8_type, "_new_int2ptr_");  
  }

  if(ptr_operand->getName().equals("RSP_val")) {
    new_store = IRB.CreateStore(inst_before_store, rsp_ptr_alloca, "_new_store_");
  } else if(ptr_operand->getName().equals("RBP_val")) {
    new_store = IRB.CreateStore(inst_before_store, rbp_ptr_alloca, "_new_store_");
  }
  recordConverted2(SI, new_store, false, false);

  return;
}

void stack_deconstructor::handle_add(Instruction* I, Value *rsp_ptr_alloca, Value *rbp_ptr_alloca) {
  IRBuilder<> IRB(I);
  Value *ptr_operand = I->getOperand(0);
  Value *new_ptr_operand = convertMap[ptr_operand];
  Value *C = I->getOperand(1);
  auto *new_gep = IRB.CreateGEP (new_ptr_operand, C, "_new_gep_");
  recordConverted2(I, new_gep, false, false);

  return;
}

void stack_deconstructor::handle_int2ptr(Instruction* I, Value *rsp_ptr_alloca, Value *rbp_ptr_alloca) {
  
  IRBuilder<> IRB(I);
  Type *type = I->getType();
  Value *ptr_operand = I->getOperand(0);
  Value *new_ptr_operand = convertMap[ptr_operand];
  auto *new_bt = IRB.CreateBitCast (new_ptr_operand, type, "_new_bt_");
  recordConverted2(I, new_bt, true, false);

  return;
}

void stack_deconstructor::handle_call(Instruction* I, Value *rsp_ptr_alloca, Value *rbp_ptr_alloca) {
  
  if(I->getOpcode() != Instruction::Call) {
    return;
  }
  DEBUG(errs() << *I << "\n");

  return;
}

void stack_deconstructor::handle_xor(Instruction* I, Value *rsp_ptr_alloca, Value *rbp_ptr_alloca) {
  
  if(I->getOpcode() != Instruction::Xor) {
    return;
  }
  DEBUG(errs() << *I << "\n");

  return;
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
    Function &F, Value *current_stack_start, Value *current_stack_end, Value *rbp_ptr_alloca) {
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


          auto *new_load = IRB.CreateLoad(rbp_ptr_alloca, "_new_load_from_rbp_");
          arguments.push_back(current_stack_start);
          arguments.push_back(current_stack_end);
          arguments.push_back(new_load);
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

bool stack_deconstructor::shouldConvertForParentStackAccess(Instruction *I) {
  if (LoadInst *li = dyn_cast<LoadInst>(I)) {
    auto *ptr_operand = li->getPointerOperand();
    StringRef str = ptr_operand->getName();
    if (str.empty()) {
      return true;
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
      if (shouldConvertForParentStackAccess(I)) {
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
      assert(0 && "probable dead code");
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
  ArgTypes.push_back(ptr_to_int8_type);
  ArgTypes.push_back(ptr_to_int8_type);
  ArgTypes.push_back(ptr_to_int8_type);

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
  DestI->setName("_parent_stack_rbp_ptr_");
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

void stack_deconstructor::recordConverted2(Instruction *From, Value *To, bool replaceUses, bool erase) {
  convertMap[From] = To;
  if(erase)
    ToErase.push_back(From);
  if(replaceUses) {
    From->replaceAllUsesWith(To);
  }
  llvm::errs() << "\t" << *From << " --> " << *To << "\n";
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
