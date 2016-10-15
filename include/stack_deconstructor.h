//===------------------------ stack_deconstructor
//--------------------------===//
//
// This file provide class definition and functionality to partition global
// monolithic
// stack to per function stack frame
//
//===----------------------------------------------------------------------===//

#ifndef __STACK_DECONSTRUCTOR_H__
#define __STACK_DECONSTRUCTOR_H__

#include "max_stack_height.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"

namespace llvm {

typedef int64_t height_ty;

class stack_deconstructor : public ModulePass {
private:
  Module *Mod;
  LLVMContext *ctx;
  SmallVector<Instruction *, 8> ToErase;
  DenseMap<llvm::Function *, llvm::Function *> FunctionCloneMap;
  DenseMap<llvm::Function *, height_ty> FunctionStackHeightMap;
  DenseMap<llvm::Value *, llvm::Value *> convertMap;
  IntegerType *int8_type;
  IntegerType *int64_type;
  PointerType *ptr_to_int8_type;

public:
  static char ID;

  stack_deconstructor() : ModulePass(ID), ctx(NULL) {}

  virtual bool runOnModule(Module &F);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
    AU.addRequired<max_stack_height>();
  };

  void deconstructStack();

  // Augment formal arguments of internal functions with parent stack
  // informations (like stack pointer and base pointer)
  void augmentFuntionSignature();

  // Create Local stack for each procedure
  void createLocalStackFrame(Function &, height_ty, Value **, Value **,
                             Value **);

  // Passing the parent stack as an argument
  void augmentCall(Function &, Value *, Value *, Value *);
  Function *cloneFunctionWithExtraArgument(Function *);

  // Modify the loads to access the parent stack, if required
  void modifyLoadsToAccessParentStack(Function &F, Value *, Value *);
  bool shouldConvertForParentStackAccess(Instruction *);

  // General helper functions
  static Constant *printf_prototype(LLVMContext &, Module *);
  Constant *geti8StrVal(Module &M, std::string, Twine const &name);
  void recordConverted(Instruction *, Value *, bool = true, bool = true);
  void eraseReplacedInstructions();
  bool isLoadOfImp(Value *, StringRef);

  // Functions to transform code to facilitate alias analysis
  void convert(Instruction *, Value *, Value *);
  bool shouldConvert(Instruction *);
  void handle_load(Instruction *I, Value *, Value *);
  void handle_store(Instruction *I, Value *, Value *);
  void handle_int2ptr(Instruction *I);
  void handle_add(Instruction *I);
  void handle_call(Instruction *I);
  void handle_extractval(Instruction *I);
};
}

#endif
