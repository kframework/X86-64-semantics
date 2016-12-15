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
#include "llvm/Support/CommandLine.h"

using namespace llvm;
STATISTIC(StaticParentAccessChecks, "Number of static parent stack accesses");

char stack_deconstructor::ID = 0;
static RegisterPass<stack_deconstructor>
    X("stack-decons",
      "To partition global monolithic stack to per function stack frame");

cl::opt<std::string> EntryFuncion("mcsema_main", cl::desc("Specify the entry function to be called from the inline asm driver"), cl::value_desc("Function Name"), cl::Required);

/// Function :  runOnModule
/// Purpose  :  Entry point for stack_deconstructor pass
bool stack_deconstructor::runOnModule(Module &M) {
  Mod = &M;
  ctx = &M.getContext();

  // Initialize
  int64_type = Type::getInt64Ty(*ctx);
  int8_type = Type::getInt8Ty(*ctx);
  ptr_to_int8_type = Type::getInt8PtrTy(*ctx);
  ptr_to_int64_type = Type::getInt64PtrTy(*ctx);
  mcsema_main = nullptr;

  deconstructStack();

  return true;
}

/// Function :  deconstructStack
/// Purpose  :  Introduce local stack frame based on the stack size
/// approximated by max_stack_height pass. This includes
///   1. Augment formal arguments of all the internal functions with parent stack
///     informations (like stack pointer and base pointer)
/// For each clonee function
///   2. Create local stack pointers and replace all existing used of
///   RSP_val/RBP_val with them
///   3. Augment the calls to internal functions with proper actual arguments
///   4. Handle parent stack access
void stack_deconstructor::deconstructStack() {
  Value *local_stack_start, *local_stack_end; 
  Value *rsp_ptr_alloca, *rbp_ptr_alloca;

  // Extracting function approximate heights
  for (Module::iterator FuncI = Mod->begin(), FuncE = Mod->end();
       FuncI != FuncE; ++FuncI) {
    Function *Func = &*FuncI;
    if (Func->isIntrinsic() || Func->isDeclaration()) {
      continue;
    }

    max_stack_height &max_stack_height_pass =
        getAnalysis<max_stack_height>(*Func);
    height_ty stack_height = max_stack_height_pass.get_stack_height();
    assert(stack_height <= 0 && "stack height cannot be positive\n");
    FunctionStackHeightMap[Func] = stack_height;
  }

  // Task 1
  augmentFuntionSignature();

  for (auto P : FunctionCloneMap) {
    auto *oldFunc = P.first;
    auto *newFunc = P.second;
    local_stack_start = local_stack_end = rbp_ptr_alloca = nullptr;

    if(oldFunc == mcsema_main) {
      DEBUG(errs() << "========================\n Processing Function:"
                 << oldFunc->getName()
                 << "\n=================================\n");

      createLocalStackFrame(*oldFunc, FunctionStackHeightMap[oldFunc],
                          &local_stack_start, &local_stack_end,
                          &rsp_ptr_alloca, &rbp_ptr_alloca);
      augmentCall(*oldFunc, local_stack_start, local_stack_end, rsp_ptr_alloca, rbp_ptr_alloca);
      modifyLoadsToAccessParentStack(*oldFunc, local_stack_start, local_stack_end);
    }

    DEBUG(errs() << "========================\n Processing Function:"
                 << newFunc->getName()
                 << "\n=================================\n");

    createLocalStackFrame(*newFunc, FunctionStackHeightMap[oldFunc],
                          &local_stack_start, &local_stack_end,
                          &rsp_ptr_alloca, &rbp_ptr_alloca);
    augmentCall(*newFunc, local_stack_start, local_stack_end, rsp_ptr_alloca, rbp_ptr_alloca);
    modifyLoadsToAccessParentStack(*newFunc, local_stack_start,
                                   local_stack_end);
  }

  return;
}

/// Function :  augmentFuntionSignature
/// Purpose  :  1. Augment formal arguments of internal functions with parent
/// stack informations (like stack pointer and base pointer)
///             2. Uses of cloned functions other that calls are replaced with
///             the clonee
///             3. Do not clone the entry function mcsema_main
/// Example  :
///     Convert define i32 @bar(i32)  to
///     define i32 define i32 @bar.2(i32, i8* %_parent_stack_start_ptr_, i8*
///     %_parent_stack_end_ptr_, i8* %_parent_stack_rbp_ptr_)
void stack_deconstructor::augmentFuntionSignature() {
  // Collect the functons to clone
  std::vector<Function *> worklist;

  for (Module::iterator FuncI = Mod->begin(), FuncE = Mod->end();
       FuncI != FuncE; ++FuncI) {
    Function *Func = &*FuncI;
    if (Func->getName() == EntryFuncion) {
      mcsema_main = Func;
    }
    worklist.push_back(Func);
  }

  // Clone them
  for (auto *oldFunc : worklist) {
    // Do not clone functions whose definitions are not internal
    if (oldFunc->isIntrinsic() || oldFunc->isDeclaration()) {
      continue;
    }

    Function *newFunc = cloneFunctionWithExtraArgument(oldFunc);
    FunctionCloneMap[oldFunc] = newFunc;

    // Task 2
    for (User *user : oldFunc->users()) {
      assert((true == isa<CallInst>(user) || true == isa<Constant>(user)) &&
             "Unhandled usage of a function");
      if (isa<CallInst>(user)) {
        continue;
      }

      DEBUG(llvm::errs() << *user << "\n");
      Constant *const_ptr = ConstantExpr::getCast(Instruction::BitCast, newFunc,
                                                  oldFunc->getType());
      oldFunc->replaceAllUsesWith(const_ptr);
    }
  }
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
/// %_local_stack_end_ptr_ = gep inbounds i8, i8* %_local_stack_start_ptr_, i64
/// n
/// store i8* %_local_stack_end_ptr_ , i8** %RSP_ptr
///
/// Task 2:
/// Replace all uses of RSP_val with RSP_ptr
void stack_deconstructor::createLocalStackFrame(Function &F,
                                                height_ty stackheight,
                                                Value **stack_start,
                                                Value **stack_end,
                                                Value **rsp_ptr_alloca,
                                                Value **rbp_ptr_alloca) {

  // Check F's argumnets are augmented with parent stack rbp pointer.
  Value *parent_stack_rbp_ptr = NULL;
  for (Function::arg_iterator I = F.arg_begin(), E = F.arg_end(); I != E; ++I) {
    if (I->getName() == "_parent_stack_rbp_ptr_") {
      parent_stack_rbp_ptr = &*I;
    }
  }

  // Performing Task 1
  ConstantInt *stack_height = ConstantInt::get(int64_type, -1 * stackheight);

  Instruction *I = &*(F.getEntryBlock().begin());

  IRBuilder<> IRB(I);
  *rsp_ptr_alloca =
      IRB.CreateAlloca(ptr_to_int8_type, nullptr, "_RSP_ptr_");
  *rbp_ptr_alloca = IRB.CreateAlloca(ptr_to_int8_type, nullptr, "_RBP_ptr_");

  *stack_start =
      IRB.CreateAlloca(int8_type, stack_height, "_local_stack_start_ptr_");
  std::vector<Value *> indices;
  indices.push_back(stack_height);
  *stack_end =
      IRB.CreateInBoundsGEP(*stack_start, indices, "_local_stack_end_ptr_");
  IRB.CreateStore(*stack_end, *rsp_ptr_alloca);
  if (parent_stack_rbp_ptr)
    IRB.CreateStore(parent_stack_rbp_ptr, *rbp_ptr_alloca);

  // Performing Task 2
  for (auto FI = F.begin(), FE = F.end(); FI != FE; ++FI) {
    for (auto BBI = FI->begin(), BBE = FI->end(); BBI != BBE;) {
      Instruction *I = &*BBI++;
      if (shouldConvert(I)) {
        DEBUG(errs() << "\n" << *I << "\n");
        convert(I, *rsp_ptr_alloca, *rbp_ptr_alloca);
      }
    }
  }
  eraseReplacedInstructions();

  return;
}

bool stack_deconstructor::shouldConvert(Instruction *I) {

  // handle load
  if (LoadInst *LI = dyn_cast<LoadInst>(I)) {
    Value *ptr_operand = LI->getPointerOperand();
    if (ptr_operand->getName().equals("XSP") ||
        ptr_operand->getName().equals("XBP")) {
      return true;
    }
  }


  // handle add sub
  if (I->getOpcode() == Instruction::Add || I->getOpcode() == Instruction::Sub) {
    /*
    Value *pointer_operand = I->getOperand(0);
    Instruction *ptr_operand = dyn_cast<Instruction>(pointer_operand);
    if(!ptr_operand) {
      llvm::errs() << *I << "\tPtr Op: " << *ptr_operand <<"\n"; 
      assert(ptr_operand && "stack_deconstructor::handle_add - Check out");
    }
    */
    if ( (0 != convertMap.count(I->getOperand(0))) || 
         (0 != convertMap.count(I->getOperand(1))) ) {
      return true;
    }
    return false;
  }

  //handle Xor And Trunc ICmp Shl LShr
  if (I->getOpcode() == Instruction::Xor || I->getOpcode() == Instruction::And) {
    auto *op1 = I->getOperand(0);
    auto *op2 = I->getOperand(1);
    if (0 != convertMap.count(op1) || 0 != convertMap.count(op2)) {
      return true;
    }
    return false;
  }

  if (I->getOpcode() == Instruction::Trunc || 
        I->getOpcode() == Instruction::ICmp ||
        I->getOpcode() == Instruction::Shl ||
        I->getOpcode() == Instruction::LShr) {
    auto *op1 = I->getOperand(0);
    if (0 != convertMap.count(op1)) {
      return true;
    }
    return false;
  }


  // handle int2ptr
  if (I->getOpcode() == Instruction::IntToPtr) {
    Value *int_operand = I->getOperand(0);
    return (0 != convertMap.count(int_operand));
  }

  // handle store
  if (StoreInst *SI = dyn_cast<StoreInst>(I)) {
    Value *ptr_operand = SI->getPointerOperand();
    Value *val_operand = SI->getValueOperand();

    // Check1: Consider stores to RSP_val or RBP_val OR
    // Check2: Ignore If value pointer of store is coming from load RSP or load
    // RBP OR
    // Check3: Consider stores whose value pointers are already replaced (i.e.
    // present in convertMap)

    // Check 1
    if (ptr_operand->getName().equals("XSP") ||
        ptr_operand->getName().equals("XBP")) {
      // Check 2
      if (isLoadOfImp(val_operand, "RSP") || isLoadOfImp(val_operand, "RBP")) {
        return false;
      }
      return true;
    }
    // Check 3
    if (0 != convertMap.count(val_operand)) {
      return true;
    }
    return false;
  }

  // handle  call
  if (CallInst *CI = dyn_cast<CallInst>(I)) {
    Function *F = CI->getCalledFunction();
    if (!F || F->getIntrinsicID() != Intrinsic::uadd_with_overflow) {
      return false;
    }
    Value *op1 = CI->getArgOperand(0);
    if (false == isLoadOfImp(op1, "XSP") &&
        false == isLoadOfImp(op1, "XBP")) {
      //assert(0 == convertMap.count(op1) && "CHECK");
      // %117 = load i64, i64* %RSP_val
      // %.lcssa = phi i64 [ %117, %block_0x1f ]
      //%uadd211 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %.lcssa, i64 16)
      return false;
    }

    assert(0 != convertMap.count(op1) &&
           "Call Inst: The pointer operand should already get converted.");

    return true;
  }

  // handle  extract
  if (ExtractValueInst *EI = dyn_cast<ExtractValueInst>(I)) {
    Value *op1 = EI->getOperand(0);
    return (0 != convertMap.count(op1));
  }

  //PhiNode
  if (PHINode *PI = dyn_cast<PHINode>(I)) {
    unsigned incomingValues = PI->getNumIncomingValues();
    for(unsigned i = 0 ; i < incomingValues; i++) {
      Value *val  = PI->getIncomingValue (i);
      if (0 != convertMap.count(val)) {
        return true;
      }
    }

    return false;
  }

  // Handle unsupported: Debug Purpose only
  auto numOperand = I->getNumOperands();
  for(unsigned i = 0 ; i < numOperand; i++) {
    Value *op = I->getOperand(i);
    if(0 != convertMap.count(op)) {
      llvm::errs() << "Unsupported: " << *I << "\n";
      assert(0 == convertMap.count(op) && "Unsupported Instruction\n");
    }
  }
  return false;
}

void stack_deconstructor::convert(Instruction *I, Value *rsp_ptr_alloca,
                                  Value *rbp_ptr_alloca) {
  //lib/IR/Instrcution.cpp
  switch (I->getOpcode()) {
  case Instruction::Load:
    handle_load(I, rsp_ptr_alloca, rbp_ptr_alloca);
    break;
  case Instruction::Store:
    handle_store(I, rsp_ptr_alloca, rbp_ptr_alloca);
    break;
  case Instruction::Add:
    handle_add(I);
    break;
  case Instruction::Sub:
    handle_sub(I);
    break;
  case Instruction::ExtractValue:
    handle_extractval(I);
    break;
  case Instruction::Call:
    handle_call(I);
    break;
  case Instruction::IntToPtr:
    handle_int2ptr(I);
    break;
  case Instruction::PHI:
    handle_phi(I);
    break;
  //case Instruction::And:
  case Instruction::Trunc:
  case Instruction::ICmp:
  case Instruction::Xor:
  case Instruction::And:
  case Instruction::Shl:
  case Instruction::LShr:
    handle_int_operators(I);
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
void stack_deconstructor::handle_load(Instruction *I, Value *rsp_ptr_alloca,
                                      Value *rbp_ptr_alloca) {
  LoadInst *LI = dyn_cast<LoadInst>(I);

  IRBuilder<> IRB(LI);
  Instruction *new_load = nullptr;
  Value *ptr_operand = LI->getPointerOperand();

  if (ptr_operand->getName().equals("XSP")) {
    new_load = IRB.CreateLoad(rsp_ptr_alloca, "_load_rsp_ptr_");
  } else {
    new_load = IRB.CreateLoad(rbp_ptr_alloca, "_load_rbp_ptr_");
  }
  recordConverted(LI, new_load, false, false);

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
//  At int2ptr inst we create a bitcast and replace all used of int2ptr with
//  that.
//  So convertMap.contains(store::value_operand) is false and we will convert
//  the result of load to
//  i8* ptr and store it in i8** RBP_ptr
//
//  Case III:
//  %1 = load i64, i64* RSP_val
//  %2 = add i64 %1, C
//  %3 = inttoptr i64 %2 to i64*
//  store i64 %val , i64* %3
//  This store will be processed by handle_store only if
//  convertMap.contains(%val) == true
//  Nevertheless, inttoptr will be converted to i8* bitcast and its uses will be
//  replaced.
//
//  Case IV:
//  %1 = load i64, i64* %RSP_val
//  store i64 %1, i64* %RDI_val
//  This store will be processed by handle_store as convertMap.contains(%1) ==
//  true
//  The instruction convertMap[%1] is appended with 'int2ptr convertMap[%1] to
//  elementtypeof(%RDI_val)'
//
//  Example:
//  ; push rbp ; mov rsp -> rbp
//    %1 = load i64, i64* %RBP_val
//    %2 = load i64, i64* %RSP_val
//    %3 = add i64 %1, -8
//    %4 = inttoptr i64 %3 to i64*
//    store i64 %1, i64* %4, !mcsema_real_eip !2
//    store i64 %3, i64* %RBP_val, !mcsema_real_eip !3
//
//  After transform:
//    %1 = load i64, i64* %RBP_val, !mcsema_real_eip !2
//    %_load_rbp_ptr_ = load i8*, i8** %_RBP_ptr_
//    %_load_rsp_ptr_ = load i8*, i8** %_RSP_ptr_
//    %_new_gep_ = getelementptr i8, i8* %_load_rsp_ptr_, i64 -8
//    %_allin_new_bt_ = bitcast i8* %_new_gep_ to i64*
//    %_new_ptr2int_ = inttoptr i8* %_load_rbp_ptr_ to i64
//    store i64 %_new_ptr2int_, i64* %_allin_new_bt_
//    store volatile i8* %_new_gep_, i8** %_RBP_ptr_
void stack_deconstructor::handle_store(Instruction *I, Value *rsp_ptr_alloca,
                                       Value *rbp_ptr_alloca) {
  StoreInst *SI = dyn_cast<StoreInst>(I);
  Value *ptr_operand = SI->getPointerOperand();
  Value *val_operand = SI->getValueOperand();

  IRBuilder<> IRB(SI);

  Value *inst_before_store = nullptr;
  Instruction *new_store = nullptr;
  bool erase_old_store;

  if (ptr_operand->getName().equals("XSP") ||
      ptr_operand->getName().equals("XBP")) {

    if (0 != convertMap.count(val_operand)) {
      Value *new_val_operand = convertMap[val_operand];
      bool acceptable_val_operand = isa<GetElementPtrInst>(new_val_operand) || isa<LoadInst> (new_val_operand);
      if(!acceptable_val_operand) {
        llvm::errs() << *SI << "\tValue: " << *val_operand << "\t Ptr: " << *ptr_operand << "\n";
        assert(0 && "stack_deconstructor::handle_store -> check");
      }
      inst_before_store = new_val_operand;
    } else {
      inst_before_store =
          IRB.CreateIntToPtr(val_operand, ptr_to_int8_type, "_new_int2ptr_");
    }

    if (ptr_operand->getName().equals("XSP")) {
      new_store =
          IRB.CreateStore(inst_before_store, rsp_ptr_alloca, "_new_store_");
    } else if (ptr_operand->getName().equals("XBP")) {
      new_store =
          IRB.CreateStore(inst_before_store, rbp_ptr_alloca, "_new_store_");
    }
    erase_old_store = false;

  } else {
    // Means convertMap.contains(val_operand) = true
    Value *converted_value_operand = convertMap[val_operand];
    Type *value_operand_type = val_operand->getType();
    Type *converted_value_operand_type = converted_value_operand->getType();
    assert(true == converted_value_operand_type->isPointerTy() &&
           "All the transofrmed types must be pointer types");
    assert(true == value_operand_type->isIntegerTy() &&
           "Increemental check failed");
    inst_before_store = IRB.CreatePtrToInt(converted_value_operand,
                                           value_operand_type, "_new_ptr2int_");
    new_store = IRB.CreateStore(inst_before_store, ptr_operand, "_new_store_");
    erase_old_store = true;
  }
  recordConverted(SI, new_store, false, erase_old_store);

  return;
}

void stack_deconstructor::handle_add(Instruction *I) {
  IRBuilder<> IRB(I);
  Value *new_ptr_operand = nullptr;
  Value *C = nullptr;
  if(0 != convertMap.count(I->getOperand(0))) {
    new_ptr_operand = convertMap[I->getOperand(0)];
    C = I->getOperand(1);
  } else {
    new_ptr_operand = convertMap[I->getOperand(1)];
    C = I->getOperand(0);
  }

  if(false == isa<Constant>(C)) {
    //llvm::errs() << *I << "\n";
    //assert(isa<Constant>(C) && "handle_add: Not a constant\n");
  }

  auto *new_gep = IRB.CreateGEP(new_ptr_operand, C, "_new_gep_");
  recordConverted(I, new_gep, false, false);

  return;
}

void stack_deconstructor::handle_sub(Instruction *I) {
  IRBuilder<> IRB(I);
  //BinaryOperator *BI = dyn_cast<BinaryOperator>(I);
  Type *Ty = I->getType();

  Value *ptr_operand = I->getOperand(0);
  Value *new_ptr_operand = convertMap[ptr_operand];
  Value *op = I->getOperand(1);
  ConstantInt *C = dyn_cast<ConstantInt> (op);
  assert(C && "Sub oerand not a constant int!!\n");

  int64_t sub_int_op = C->getSExtValue();
  Constant *gep_int_op = ConstantInt::get(Ty, -1*sub_int_op);
  auto *new_gep = IRB.CreateGEP(new_ptr_operand, gep_int_op, "_new_gep_");
  recordConverted(I, new_gep, false, false);

  return;
}

void stack_deconstructor::handle_int2ptr(Instruction *I) {
  IRBuilder<> IRB(I);
  Type *type = I->getType();
  Value *ptr_operand = I->getOperand(0);
  Value *new_ptr_operand = convertMap[ptr_operand];
  auto *new_bt = IRB.CreateBitCast(new_ptr_operand, type, "_allin_new_bt_");
  recordConverted(I, new_bt, true, false);

  return;
}

void stack_deconstructor::handle_call(Instruction *I) {
  IRBuilder<> IRB(I);
  CallInst *CI = dyn_cast<CallInst>(I);
  Value *op1 = CI->getArgOperand(0);
  // Value *op2 = CI->getArgOperand(1);
  Type *op1_type = op1->getType();
  auto *new_ptr_int =
      IRB.CreatePtrToInt(convertMap[op1], op1_type, "_new_ptr2int_");
  Instruction *op1_I = dyn_cast<Instruction>(op1);
  recordConverted(op1_I, new_ptr_int, true, false);
  return;
}

void stack_deconstructor::handle_extractval(Instruction *I) {
  IRBuilder<> IRB(I);
  Value *op1 = I->getOperand(0);
  recordConverted(I, convertMap[op1], false, false);
  return;
}

void stack_deconstructor::handle_phi(Instruction *I) {
  IRBuilder<> IRB(I);
  PHINode *PI = dyn_cast<PHINode>(I);

  unsigned incomingValues = PI->getNumIncomingValues();

  // Obtain the new Type of PHINode
  Type *Ty =  nullptr;
  bool all_incoming_vals_converted = true;
  for(unsigned i = 0 ; i < incomingValues; i++) {
    Value *orig_val  = PI->getIncomingValue (i);
    if (0 != convertMap.count(orig_val)) {
      auto *converted_val  = convertMap[orig_val];      
      Ty = converted_val->getType();
    } else {
      all_incoming_vals_converted = false;
    }
  }

  if(true == all_incoming_vals_converted) {
    auto *new_phi = IRB.CreatePHI(Ty, incomingValues);

    for(unsigned i = 0 ; i < incomingValues; i++) {
      auto *orig_val  = PI->getIncomingValue (i);
      auto *converted_val  = convertMap[orig_val];
      new_phi->addIncoming(converted_val, PI->getIncomingBlock(i));
    }
    recordConverted(PI, new_phi, false, false);
  } else {
    auto *new_phi = IRB.CreatePHI(Ty, incomingValues);

    for(unsigned i = 0 ; i < incomingValues; i++) {
      auto *orig_val  = PI->getIncomingValue (i);
      if(0 != convertMap.count(orig_val)) {
        auto *converted_val  = convertMap[orig_val];
        Value *new_val =
          IRB.CreatePtrToInt(converted_val, PI->getType(), "_trans_p2i_");
        new_phi->addIncoming(new_val, PI->getIncomingBlock(i));
      } else {
        new_phi->addIncoming(orig_val, PI->getIncomingBlock(i));
      }
    }
    recordConverted(PI, new_phi, false, false);
  }
  return;
}

void stack_deconstructor::handle_int_operators(Instruction *I) {
  IRBuilder<> IRB(I);

  if(Instruction::Xor == I->getOpcode() || Instruction::And == I->getOpcode()) {
    auto *op1 = I->getOperand(0);
    auto *op2 = I->getOperand(1);

    auto *new_op1 = op1;
    auto *new_op2 = op2;

    if(0 != convertMap.count(op1)) { 
      auto *converted_op1 = convertMap[op1];
      if(converted_op1->getType()->isPointerTy()) {
        new_op1 =
          IRB.CreatePtrToInt(converted_op1, op1->getType(), "_trans_p2i_");
      }
    }

    if(0 != convertMap.count(op2)) { 
      auto *converted_op2 = convertMap[op2];
      if(converted_op2->getType()->isPointerTy()) {
        new_op2 =
          IRB.CreatePtrToInt(converted_op2, op2->getType(), "_trans_p2i_");
      }
    }

    Value *new_val = nullptr;
    if(Instruction::Xor == I->getOpcode()) {
      new_val = IRB.CreateBinOp(Instruction::Xor, new_op1,
                                     new_op2, "_trans_xor_");
    } else {
      new_val = IRB.CreateBinOp(Instruction::And, new_op1,
                                     new_op2, "_trans_xor_");
    }
    Instruction *new_inst = dyn_cast<Instruction>(new_val);
    recordConverted(I, new_inst, true, false);

  } else if (Instruction::Trunc == I->getOpcode()) {

    auto *op1 = I->getOperand(0);
    auto *new_op1 = op1;

    if(0 != convertMap.count(op1)) { 
      auto *converted_op1 = convertMap[op1];
      if(converted_op1->getType()->isPointerTy()) {
        new_op1 =
          IRB.CreatePtrToInt(converted_op1, op1->getType(), "_trans_p2i_");
      }
    }

    auto *new_val = IRB.CreateTrunc(new_op1, I->getType(), "_trans_trunc_");
    Instruction *new_inst = dyn_cast<Instruction>(new_val);
    recordConverted(I, new_inst, true, false);
  } else if (Instruction::ICmp == I->getOpcode()) {

    ICmpInst *IC = dyn_cast<ICmpInst>(I);
    auto *op1 = IC->getOperand(0);
    auto *new_op1 = op1;

    if(0 != convertMap.count(op1)) { 
      auto *converted_op1 = convertMap[op1];
      if(converted_op1->getType()->isPointerTy()) {
        new_op1 =
          IRB.CreatePtrToInt(converted_op1, op1->getType(), "_trans_p2i_");
      }
    }

    Value *new_val = nullptr;
    if(IC->isEquality()) {
      new_val = IRB.CreateICmpEQ(new_op1, IC->getOperand(1), "_trans_icmp_eq_");
    } else {
      new_val = IRB.CreateICmpNE(new_op1, IC->getOperand(1), "_trans_icmp_ne_");
    }
    Instruction *new_inst = dyn_cast<Instruction>(new_val);
    recordConverted(IC, new_inst, true, false);
  } else if (Instruction::Shl == I->getOpcode()) {

    BinaryOperator *BI = dyn_cast<BinaryOperator>(I);
    auto *op1 = BI->getOperand(0);
    auto *new_op1 = op1;

    if(0 != convertMap.count(op1)) { 
      auto *converted_op1 = convertMap[op1];
      if(converted_op1->getType()->isPointerTy()) {
        new_op1 =
          IRB.CreatePtrToInt(converted_op1, op1->getType(), "_trans_p2i_");
      }
    }

    Value *new_val = IRB.CreateShl(new_op1, BI->getOperand(1), "_trans_shl_eq_");
    Instruction *new_inst = dyn_cast<Instruction>(new_val);
    recordConverted(BI, new_inst, true, false);
  }

  return;
}

/// Function :  augmentCall
/// Purpose  :  For each CallInst (to mcsema generated functions), add extra
/// actual arguments
///   %_local_stack_start_  : points to the start of parent frame
///   %_local_stack_end_    : point to the end of parent stack frame
///   %_rbp_ptr_            : point to the rbp pointer of parent frame
/// Also the corresponding called function are augmented with extra
/// formal arguments.
void stack_deconstructor::augmentCall(Function &F, Value *local_stack_start,
                                      Value *local_stack_end,
                                      Value *rsp_ptr_alloca,
                                      Value *rbp_ptr_alloca) {
  for (auto FI = F.begin(), FE = F.end(); FI != FE; ++FI) {
    for (auto BBI = FI->begin(), BBE = FI->end(); BBI != BBE;) {
      Instruction *I = &*BBI++;

      if (CallInst *ci = dyn_cast<CallInst>(I)) {

        IRBuilder<> IRB(ci);
        Value *calledValue = ci->getCalledValue();
        Function *oldFunc = dyn_cast<Function>(calledValue);
        Value *newCallee = NULL;

        if (oldFunc) {
          // We will be augmenting only those calls whose definitions
          // are cloned. Ex. we should not augment printf
          if (0 == FunctionCloneMap.count(oldFunc)) {
            //This could be functions like strcmp or llvm.ctpop
            // For functions like strcmp, fix the rsp pointer by 8
            auto FuncName = oldFunc->getName();
            if(false == FuncName.startswith("llvm.")) {
              std::vector<Value *> arguments;
              for (auto &args : ci->arg_operands()) {
                arguments.push_back(args);
              }
              CallInst *new_ci = IRB.CreateCall(oldFunc, arguments);
              new_ci->setCallingConv(ci->getCallingConv());
              auto *rsp_fix = IRB.CreateLoad(rsp_ptr_alloca, "_rsp_fix_");
              auto *gep_fix =
                  IRB.CreateGEP(rsp_fix, ConstantInt::get(int64_type, 8) , "_gep_fix_");
              IRB.CreateStore(gep_fix, rsp_ptr_alloca);
              recordConverted(ci, new_ci);
            }
            continue;
          }
          newCallee = FunctionCloneMap[oldFunc];
        } else {
          // calledValue is a function pointer
          Type *type = calledValue->getType();
          FunctionType *funcTy =
              dyn_cast<FunctionType>(type->getPointerElementType());
          assert(funcTy != nullptr && "Must be a function type");

          // Augment the old function pointer type to promoted type
          std::vector<Type *> ArgTypes;
          FunctionType::param_iterator PI = funcTy->param_begin();
          FunctionType::param_iterator PE = funcTy->param_end();
          for (; PI != PE; PI++) {
            ArgTypes.push_back(*PI);
          }
          ArgTypes.push_back(ptr_to_int8_type);
          ArgTypes.push_back(ptr_to_int8_type);
          ArgTypes.push_back(ptr_to_int8_type);

          FunctionType *newTy =
              FunctionType::get(ci->getType(), ArgTypes, false);

          // Create a bitcast of the old function pointer to promoted type
          newCallee = IRB.CreateBitCast(calledValue, newTy->getPointerTo());
        }

        std::vector<Value *> arguments;
        for (auto &args : ci->arg_operands()) {
          arguments.push_back(args);
        }
        auto *new_load_rbp = IRB.CreateLoad(rbp_ptr_alloca, "_load_rbp_ptr_");
        auto *new_load_rsp = IRB.CreateLoad(rsp_ptr_alloca, "_load_rsp_ptr_");
        arguments.push_back(new_load_rsp);
        arguments.push_back(local_stack_end);
        arguments.push_back(new_load_rbp);

        CallInst *new_ci = IRB.CreateCall(newCallee, arguments);
        new_ci->setCallingConv(ci->getCallingConv());
        auto *rsp_fix = IRB.CreateLoad(rsp_ptr_alloca, "_rsp_fix_");
        auto *gep_fix =
            IRB.CreateGEP(rsp_fix, ConstantInt::get(int64_type, 8) , "_gep_fix_");
        IRB.CreateStore(gep_fix, rsp_ptr_alloca);
        recordConverted(ci, new_ci);
      } // end if(CallInst ...)
    }   // end for
  }     // end for
  // At this point erase all the replcaed instrcutions
  eraseReplacedInstructions();

  return;
}

/// Function :  modifyLoadsToAccessParentStack
/// Purpose  :  Add a runtime check for each load
/// to check if the pointer dereferenced pointer to pointing to
/// parent stack
//  Algorithm:
/// Let PTR           : Pointer to be dereferenced
///     LocalEnd      : Top address of the local stack
///     ParentEnd     : Top address of the parent stack
///     ParentStart   : Bottom address of the parent stack
///     
///     condition1 : (PTR points to higher address than LocalEnd) : PTR > LocalEnd
///     condition2 (not within parent stack limits ): (PTR > ParentEnd || PTR < ParentStart)
///     condition3 : ParentStart + (PTR - LocalEnd) <  ParentEnd
///
/// Case I: PTR is a local stack  pointer
///   Satisfies:
///       !condition1
///   Conclusion:
///       Dereference PTR
///
/// Case II: PTR is a parent stack pointer computed w.r.t local RSP/RBP as PTR =
/// RSP/RBP + C
///   Satisfies:
///       condition1
///       condition2 
///        // NOTE: PTR is on a  different address space because of different stack array used for 
///        // each function, so  PTR will not  fall within the parent stack limits
//
///       condition3 : ParentStart + (PTR - LocalEnd) <  ParentEnd 
//        // LHS of the condition is the effective address in the parnet stack frame. And that should 
//        // lie within the parnet stack bounds.
//
///   Conclusion:
///       Dereference (ParentStart + (PTR - LocalEnd))
///
/// Case III: PTR is a direct parent stack pointer 
///   Satisfies:
///       condition1 
//        // as layout of parent stack address is above that of local stack address
///       !condition2
///   Conclusion:
///       Dereference PTR
///
/// Case IV: PTR is a direct parent to global or heap
///   Satisfies:
///       condition1 or !condition1 // as layout of heap could be anywhere
///       condition2
///       !condition3
///   Conclusion:
///       Dereference PTR
///
///  So  IF    condition1 && condition2 && condition3 ==>      Dereference
///  (ParentStart + (PTR - LocalEnd))
///      Else   Dereference PTR
void stack_deconstructor::modifyLoadsToAccessParentStack(
    Function &F, Value *local_stack_start, Value *local_stack_end) {

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
    DEBUG(errs() << "\nEvaluate for Parent Access: " << *I << "\n");
    LoadInst *li = dyn_cast<LoadInst>(I);
    Value *ptr_operand = li->getPointerOperand();
    auto *head_bb = I->getParent();
    Type *ptr_operand_type = ptr_operand->getType();

    IRBuilder<> IRB(I);
    auto *ptr_to_int =
        IRB.CreatePtrToInt(ptr_operand, int64_type, "_ptr_to_int_");
    auto *local_end_to_int =
        IRB.CreatePtrToInt(local_stack_end, int64_type, "_local_end_to_int_");

    auto *ptr_operand_bt =
        IRB.CreateBitCast(ptr_operand, ptr_to_int8_type, "_ptr_bt_");
    auto *local_end_bt =
        IRB.CreateBitCast(local_stack_end, ptr_to_int8_type, "_local_end_bt_");
    auto *parent_end_bt = IRB.CreateBitCast(parent_stack_end, ptr_to_int8_type,
                                            "_parent_end_bt_");
    auto *parent_start_bt = IRB.CreateBitCast(
        parent_stack_start, ptr_to_int8_type, "_parent_start_bt_");

    auto *offset = IRB.CreateBinOp(Instruction::Sub, ptr_to_int,
                                   local_end_to_int, "_offset_above_rbp_");
    auto *potential_parent_address =
        IRB.CreateGEP(parent_start_bt, offset, "_pot_address_in_parent_stack_");

    auto *cond1 = IRB.CreateICmp(ICmpInst::ICMP_UGT, ptr_operand_bt,
                                 local_end_bt, "_cond1_");
    auto *cond2_1 = IRB.CreateICmp(ICmpInst::ICMP_UGT, ptr_operand_bt,
                                   parent_end_bt, "_cond2_1_");
    auto *cond2_2 = IRB.CreateICmp(ICmpInst::ICMP_ULT, ptr_operand_bt,
                                   parent_start_bt, "_cond2_2_");
    auto *cond2 = IRB.CreateBinOp(Instruction::Or, cond2_1, cond2_2, "_cond2_");

    auto *cond3 = IRB.CreateICmp(ICmpInst::ICMP_ULE, potential_parent_address,
                                 parent_end_bt, "_cond4_");
    auto *cond1_n_cond2 =
        IRB.CreateBinOp(Instruction::And, cond1, cond2, "_cond1_n_cond2_");
    auto *cond1_n_cond2_n_cond3 = IRB.CreateBinOp(
        Instruction::And, cond1_n_cond2, cond3, "_cond1_n_cond2_cond3_");
    TerminatorInst *ti =
        SplitBlockAndInsertIfThen(cond1_n_cond2_n_cond3, I, false);

    auto *then_bb = ti->getParent();

    // Populate the Then Basic Block
    IRB.SetInsertPoint(then_bb->getTerminator());

    DEBUG(Constant *printf_func = printf_prototype(*ctx, Mod); IRB.CreateCall(
        printf_func,
        geti8StrVal(*Mod,
                    "Accessing Parent Stack [" +
                        std::to_string(StaticParentAccessChecks++) + "]\n",
                    "_debug_parent_stack_")));
    // Constant *printf_func = printf_prototype(*ctx, Mod); IRB.CreateCall(
    //    printf_func,
    //    geti8StrVal(*Mod,
    //                "Accessing Parent Stack [" +
    //                    std::to_string(StaticParentAccessChecks++) + "]\n",
    //                "_debug_parent_stack_"));
    auto *parent_address =
        IRB.CreateGEP(parent_start_bt, offset, "_address_in_parent_stack_");
    auto *parent_address_bt = IRB.CreateBitCast(
        parent_address, ptr_operand_type, "_address_in_parent_stack_bt_");

    // Polulate the Tail Basic Block
    IRB.SetInsertPoint(li);

    auto *new_phi = IRB.CreatePHI(ptr_operand_type, 2);
    new_phi->addIncoming(ptr_operand, head_bb);
    new_phi->addIncoming(parent_address_bt, then_bb);

    Instruction *new_load = NULL;
    new_load = IRB.CreateLoad(new_phi, "_new_load_");
    recordConverted(li, new_load);
  }

  // At this point erase all the replcaed instrcutions
  eraseReplacedInstructions();

  return;
}

bool stack_deconstructor::shouldConvertForParentStackAccess(Instruction *I) {
  if (LoadInst *li = dyn_cast<LoadInst>(I)) {
    auto *ptr_operand = li->getPointerOperand();
    StringRef str = ptr_operand->getName();
    if (str.empty() || StringRef::npos != str.find("_allin_")) {
      return true;
    }
  }

  return false;
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

void stack_deconstructor::recordConverted(Instruction *From, Value *To,
                                          bool replaceUses, bool erase) {
  convertMap[From] = To;
  if (erase)
    ToErase.push_back(From);
  if (replaceUses) {
    From->replaceAllUsesWith(To);
  }
  DEBUG(llvm::errs() << "\tConvert :" << *From << " --> " << *To << "\n");
}

void stack_deconstructor::eraseReplacedInstructions() {
  for (Instruction *E : ToErase)
    E->dropAllReferences();
  for (Instruction *E : ToErase)
    E->eraseFromParent();

  convertMap.shrink_and_clear();
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

bool stack_deconstructor::isLoadOfImp(Value *I, StringRef ptr_name) {
  LoadInst *LI = dyn_cast<LoadInst>(I);
  if (!LI) {
    return false;
  }

  Value *ptr_operand = LI->getPointerOperand();
  if (ptr_operand->getName() != ptr_name) {
    return false;
  }

  return true;
}
