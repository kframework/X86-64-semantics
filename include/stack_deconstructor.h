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

  height_ty approximate_stack_height;
  SmallVector<Instruction *, 8> ToErase;
  DenseMap<const llvm::Function *, Value *> FunctionToFrameMap;
  DenseMap<llvm::Value *, llvm::Value *> convertMap;
  void deconstructStack(Function &);
  Type *int8_type;
  Type *ptr_to_int8_type;

public:
  static char ID;

  stack_deconstructor() : ModulePass(ID), ctx(NULL) {}

  virtual bool runOnModule(Module &F);

  virtual void getAnalysisUsage(AnalysisUsage &AU) const {
    AU.setPreservesAll();
    AU.addRequired<max_stack_height>();
  };

  Function *cloneFunctionWithExtraArgument(Function *);
  void eraseReplacedInstructions();
  void recordConverted(Instruction *From, Value *To);
  bool createLocalStackFrame(Function &, Value **, Value **, Value**);
  void augmentFunctionWithParentStack(Function &, Value *, Value *, Value *);
  void modifyLoadsToAccessParentStack(Function &F, Value *, Value *);
  bool shouldConvertForParentStackAccess(Instruction *);
  static Constant *printf_prototype(LLVMContext &, Module *);
  Constant *geti8StrVal(Module &M, std::string, Twine const &name);

  // Functions to transform code to facilitate alias analysis
  void convert(Instruction *, Value*, Value*);
  bool shouldConvert(Instruction *);
  void handle_int2ptr(Instruction* I, Value *, Value *);
  void handle_add(Instruction* I, Value *, Value *);
  void handle_load(Instruction* I, Value *, Value *);
  void handle_store(Instruction* I, Value *, Value *);
  void handle_call(Instruction* I, Value *, Value *);
  void handle_xor(Instruction* I, Value *, Value *);
  void recordConverted2(Instruction *From, Value *To, bool = true, bool = true);
};
}

#endif
