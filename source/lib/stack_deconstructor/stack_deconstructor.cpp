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
      errs() << "Analysing: " << F.getName() << " : " << max_stack_height_pass.get_stack_height() <<  "\n";
      insertlocalstack(F, max_stack_height_pass.get_stack_height());
    }
  }

  return true; // Transform pass
}

void stack_deconstructor::insertlocalstack(Function &F, height_ty size) {

  BasicBlock &eb = F.getEntryBlock();
  assert(size <= 0 && "stack height cannot be positive\n");

  for(auto &I : eb) {
    if(StoreInst *str_inst = dyn_cast<StoreInst>(&I)) {
      Value* ptr_operand = str_inst->getPointerOperand();
      if(ptr_operand->getName().equals("RSP_val")) {

        LLVMContext &ctx =  Mod->getContext();
        //create:: %_local_stack_alloc_ = alloca [32 x i64]
        Type* int64ty = Type::getInt64Ty(ctx);
        ArrayType *arr_int64ty  = ArrayType::get(int64ty, -1*size);
        AllocaInst *ai_inst = new AllocaInst(arr_int64ty, "_local_stack_alloc_", str_inst);

        //create:: %_local_stack_gep_ = getelementptr inbounds [32 x i64]* %_local_stack_alloc_, i32 0, i32 0
        std::vector<Value* > indices;
        indices.push_back(ConstantInt::get(Type::getInt32Ty(ctx), 0));
        indices.push_back(ConstantInt::get(Type::getInt32Ty(ctx), 0));
        GetElementPtrInst *gep_inst = GetElementPtrInst::CreateInBounds(ai_inst, 
                indices, "_local_stack_gep_", str_inst);

        //create:: %_local_stack_P2I_ = ptrtoint i64* %_local_stack_gep_ to i64
        PtrToIntInst *p2i_inst = new PtrToIntInst(gep_inst, Type::getInt64Ty(ctx), "_local_stack_P2I_",str_inst);

        //create:: store i64 %_local_stack_P2I_, i64* %RSP_val
        new StoreInst(p2i_inst, ptr_operand, str_inst);
        str_inst->eraseFromParent();
        break;
      }
    }
  }
}

