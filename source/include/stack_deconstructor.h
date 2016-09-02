//===------------------------ stack_deconstructor --------------------------===//
//
// This file provide class definition and functionality to partition global monolithic
// stack to per function stack frame
//
//===----------------------------------------------------------------------===//

#ifndef __STACK_DECONSTRUCTOR_H__
#define __STACK_DECONSTRUCTOR_H__

#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "max_stack_height.h"

namespace llvm {

typedef int64_t height_ty;


class stack_deconstructor : public ModulePass {
private:
  Module *Mod;
  height_ty approximate_stack_height;
  SmallVector<Instruction *, 8> ToErase;
  DenseMap<const llvm::Function *, Value*> FunctionToFrameMap;
  void insertlocalstack(Function &);
  //void test(Function &F, height_ty size);

public:
  static char ID;


  stack_deconstructor() : ModulePass(ID) { }

  virtual bool runOnModule(Module &F);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
    AU.addRequired<max_stack_height>();
  };

  Function* cloneFunctionWithExtraArgument(Function* );
  void eraseReplacedInstructions();
  void recordConverted(Instruction *From, Value *To);
  bool  createLocalStackFrame(Function&, Value**, Value**);
  void augmentFunctionWithParentStack(Function &, Value*);
  void modifyLoadStoreToAccessParentStack(Function &F, Value*) ;
  bool shouldConvert(Instruction*);
};
}

#endif
