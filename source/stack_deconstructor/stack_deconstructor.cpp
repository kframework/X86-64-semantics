#define DEBUG_TYPE "stack_deconstructor"
#include "stack_deconstructor.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Utils/ValueMapper.h"
#include "llvm/Transforms/Utils/Cloning.h"

using namespace llvm;

char stack_deconstructor::ID = 0;
static RegisterPass<stack_deconstructor>
    X("stack-decons", "To partition global monolithic stack to per function stack frame");

/*******************************************************************
  * Function :   runOnModule
  * Purpose  :   Entry point for stack_deconstructor pass
********************************************************************/
bool stack_deconstructor::runOnModule(Module &M) {
  Mod = &M;

  for(Function &F : M ) {
    if (!F.isDeclaration()) {
      max_stack_height &max_stack_height_pass = getAnalysis<max_stack_height>(F);
      //errs() << "Analysing: " << F.getName() << " : " << max_stack_height_pass.get_stack_height() <<  "\n";
      insertlocalstack(F, max_stack_height_pass.get_stack_height());
    }
  }

  return true; // Transform pass
}

/*******************************************************************
  * Function :   insertlocalstack
  * Purpose  :   Deconstruct the global stack frame (visible to all the 
  *               functions) into per procedure (local) stack frame.
  *              Covert the following instructiions 
  *
  *               %RSP_val = alloca i64, !mcsema_real_eip !2 
  *               
  *               %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2 ; Reading the register context to get the stack pointer
  *               %7 = load i64* %RSP, !mcsema_real_eip !2
  *
  *               store i64 %7, i64* %RSP_val, !mcsema_real_eip !2  ; Storing the stack pointer in the local variable %RSP_val
  *               ; All subsequesnt computations are using %RSP_val
  *
  *               TO
  *
  *               %RSP_val = alloca i64, !mcsema_real_eip !2
  *               
  *               ; Following two are dead instructions
  *               %RSP = getelementptr inbounds %struct.regs* %0, i64 0, i32 6, !mcsema_real_eip !2 ; 
  *               %7 = load i64* %RSP, !mcsema_real_eip !2
  *
  *               %_local_stack_alloc_ = alloca [32 x i64]   ; The stack height 32 is determined by a previous dfa pass    ; Newly inserted
  *               %_local_stack_gep_ = getelementptr inbounds [32 x i64]* %_local_stack_alloc_, i32 0, i32 0  ; Newly inserted
  *               %_local_stack_P2I_ = ptrtoint i64* %_local_stack_gep_ to i64                                ; Newly inserted
  *               store i64 %_local_stack_P2I_, i64* %RSP_val                                                 ; Newly inserted
  *
  *               ; All subsequesnt computations are using %RSP_val
********************************************************************/
void stack_deconstructor::insertlocalstack(Function &F, height_ty size) {

  assert(size <= 0 && "stack height cannot be positive\n");

  BasicBlock &eb = F.getEntryBlock();
  PtrToIntInst *stack_start = NULL;
  LoadInst *str_inst = NULL;
  LLVMContext &ctx =  Mod->getContext();
  BinaryOperator *stack_end  = NULL;

  bool stack_frame_deconstructed = false;

  /*  Search for the instruction 
   *    store i64 %7, i64* %RSP_val
   *  in the entry block
   */  
  for (BasicBlock::iterator i: eb) {  
    Instruction *I = i++;
    //if(NULL != (str_inst = dyn_cast<StoreInst>(I))) {
    if(NULL != (str_inst = dyn_cast<LoadInst>(I))) {

      Value* ptr_operand = str_inst->getPointerOperand();
      if(ptr_operand->getName().equals("RSP")) {

        stack_frame_deconstructed = true;

        //create:: %_local_stack_alloc_ = alloca [32 x i64]
        Type* int64ty = Type::getInt64Ty(ctx);
        ArrayType *arr_int64ty  = ArrayType::get(int64ty, -1*size);
        AllocaInst *ai_inst = new AllocaInst(arr_int64ty, "_local_stack_alloc_", str_inst);

        //create:: %_local_stack_gep_ = getelementptr inbounds [32 x i64]* %_local_stack_alloc_, i32 0, i32 0
        std::vector<Value* > indices;
        indices.push_back(ConstantInt::get(Type::getInt32Ty(ctx), 0));
        indices.push_back(ConstantInt::get(Type::getInt32Ty(ctx), 0));
        GetElementPtrInst *gep_inst = GetElementPtrInst::CreateInBounds(ai_inst, 
                indices, "_local_stack_start_ptr_", str_inst);

        //create:: %_local_stack_P2I_ = ptrtoint i64* %_local_stack_gep_ to i64
        stack_start = new PtrToIntInst(gep_inst, Type::getInt64Ty(ctx), "_local_stack_start_",str_inst);
        ConstantInt* stack_height = ConstantInt::get(Type::getInt64Ty(ctx), -1*size, str_inst);
        stack_end = BinaryOperator::Create(Instruction::Add, stack_start, stack_height, "_local_stack_end_",str_inst );

        //create:: store i64 %_local_stack_P2I_, i64* %RSP_val
        new StoreInst(stack_start, ptr_operand, str_inst);

        //str_inst->eraseFromParent(); ????

        break;
      }
    }
  }

  //If the stack frame is not deconstructed, return
  if(false == stack_frame_deconstructed) {
    return;
  }

  /* For each call inst (to mcsema generated functions), add an extra actual arguments %_local_stack_P2I_ and height(%_local_stack_P2I_) 
  ** and also the corresponding called function are augmented with an extra arguments i64 %_parent_rsp_, i32 %_parent_rsp_height   
  */
  for (inst_iterator i = inst_begin(F), e = inst_end(F); i != e; ++i) {
    Instruction *I = &*i;
    i++;
    if(CallInst *ci = dyn_cast<CallInst>(I)) {
      Function* f = ci->getCalledFunction();
      if(!f->isDeclaration()) {
        llvm::errs() << *ci << "\n";

        Function* new_f = cloneFunctionWithExtraArgument(f);

        std::vector<Value*> arguments;
        for(auto &args : ci->arg_operands()) {
          arguments.push_back(args);
        }

        arguments.push_back(stack_end);
        CallInst::Create(new_f, arguments, "", ci);
        ci->eraseFromParent();
      }
    }
  }

  const Value* parentstack = NULL;
  for (Function::const_arg_iterator I = F.arg_begin(), E = F.arg_end();
       I != E; ++I) {
    if(I->getName() == "_parent_stack_end_ptr_") {
      parentstack = &*I;     
    }
  }

  if(NULL == parentstack) return;

  for (inst_iterator i = inst_begin(F), e = inst_end(F); i != e; ++i) {
    Instruction *I = &*i;
    i++;
    if(LoadInst *li = dyn_cast<LoadInst>(I)) {

      Value* ptr_operand = li->getPointerOperand();
      PtrToIntInst  *p2i_inst = new PtrToIntInst(ptr_operand, Type::getInt64Ty(ctx), "_p2i_",li);
      ICmpInst *BranchVal = new ICmpInst(li, ICmpInst::ICMP_ULE, p2i_inst, stack_start, "_cond_");
      BasicBlock *TrueDest = BasicBlock::Create(ctx, "_true_", &F);
      BasicBlock *FalseDest = BasicBlock::Create(ctx, "_false_", &F);
      BranchInst::Create(TrueDest, FalseDest, BranchVal, li);

      //True Branch
      LoadInst *nLoadTrue = new LoadInst(ptr_operand, "_newload_", TrueDest);

      //False Branch
      BinaryOperator *offset1 = BinaryOperator::Create(Instruction::Sub, p2i_inst, stack_start, "_offset_above_rbp_", FalseDest);
      BinaryOperator *offset2 = BinaryOperator::Create(Instruction::Sub, offset1, ConstantInt::get(Type::getInt64Ty(ctx), 8), "_offset_in_parent_stack_", FalseDest);
      BinaryOperator *parent_address = BinaryOperator::Create(Instruction::Add, offset2,  const_cast<Value*> (parentstack) , "_address_in_parent_stack_", FalseDest);
      IntToPtrInst *parent_address_ptr = new IntToPtrInst(parent_address, Type::getInt64PtrTy(ctx), "_address_ptr_in_parent_stack_",FalseDest);
      new LoadInst(parent_address_ptr, "_newload_", FalseDest);

      PHINode::Create( Type::getInt64Ty(ctx), 2, "_phi_", li);
      li->replaceAllUsesWith(nLoadTrue);
      li->eraseFromParent();
    }

  }

  return;
}

Function* stack_deconstructor::cloneFunctionWithExtraArgument(Function * F) {
  std::vector<Type*> ArgTypes;
  ValueToValueMapTy VMap;
  LLVMContext &ctx =  Mod->getContext();

  for (Function::const_arg_iterator I = F->arg_begin(), E = F->arg_end();
       I != E; ++I) {
      ArgTypes.push_back(I->getType());
  }

  //extra argument
  ArgTypes.push_back(Type::getInt64Ty(ctx));

  // Create a new function type considering the extra argument
  FunctionType *FTy = FunctionType::get(F->getFunctionType()->getReturnType(),
                                    ArgTypes, F->getFunctionType()->isVarArg());

  // Create the new function...
  Function *NewF = Function::Create(FTy, F->getLinkage(), F->getName());

  // Loop over the arguments, copying the names of the mapped arguments over...
  Function::arg_iterator DestI = NewF->arg_begin();
  for (Function::const_arg_iterator I = F->arg_begin(), E = F->arg_end();
       I != E; ++I) {
    DestI->setName(I->getName()); 
    VMap[I] = DestI++;       
  }
  DestI->setName("_parent_stack_end_ptr_"); DestI++;

  SmallVector<ReturnInst*, 8> Returns;  // Ignore returns cloned.
  CloneFunctionInto(NewF, F, VMap, false, Returns, "");

  Mod->getFunctionList().push_back(NewF);
  //F->replaceAllUsesWith(NewF);

  return NewF;
}


