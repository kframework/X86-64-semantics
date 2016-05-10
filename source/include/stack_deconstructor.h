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
  void insertlocalstack(Function &F, height_ty size);

public:
  static char ID;


  stack_deconstructor() : ModulePass(ID) { }

  virtual bool runOnModule(Module &F);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
    AU.addRequired<max_stack_height>();
  };

};
}

#endif
