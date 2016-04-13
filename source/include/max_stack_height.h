//===------------------------ max_stack_height.h --------------------------===//
//
// This file provide class definition and functionality to compute the static
// stack frame size for each fucntion. 
//
//===----------------------------------------------------------------------===//

#ifndef __MAX_STACK_HEIGHT_H__
#define __MAX_STACK_HEIGHT_H__


#include "llvm/Pass.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/InstVisitor.h"

namespace llvm {

// enum for the data flow values associated with each basic block
enum dfa_values {
  IN = 0,
  OUT,
  GEN,
  TOTAL_DFA_VALUES // = 3
  };
typedef int64_t height_ty;


class max_stack_height :  public FunctionPass,
                          public InstVisitor<max_stack_height>                            
{
  private:
    Function* Func;

    typedef std::vector<height_ty> dfva;      

    //Maps each Basic Block to its data flow values (IN, OUT, GEN)
    DenseMap<BasicBlock*, dfva*> BBMap;
    
    // Map to do a symbolic execution on the instruction of a BB
    // involving rsp, rbp displacements to track the
    // max displacement of rsp or from rbp in that BB.
    DenseMap<Value*, height_ty> InstMap;

    //llvm alloca inst for rsp, rbp 
    Value* llvm_alloca_inst_rsp;
    Value* llvm_alloca_inst_rbp;
     
    void perform_dfa() ;
    void initialize_framework();
    void perform_const_dfa();
    void perform_global_dfa();
    void print_adt(DenseMap<Value*, height_ty>);
    void print_adt();
    height_ty calculate_max_height_BB(BasicBlock *BB);
      

  public:
    static char ID;

    max_stack_height() : FunctionPass (ID) {
      llvm_alloca_inst_rsp = NULL;
      llvm_alloca_inst_rbp = NULL;
    }

    virtual bool runOnFunction(Function &F);

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.setPreservesAll();
    };

    // Overriden InstVisitor methods
    void visitLoadInst(LoadInst     &I);  
    void visitStoreInst(StoreInst   &I);           
    void visitExtractValueInst(ExtractValueInst &I);
    void visitIntrinsicInst(IntrinsicInst &I);
    void visitAdd(BinaryOperator &I);
    void visitSub(BinaryOperator &I);
    void visitCallInst(CallInst &I);
    void visitAddSubHelper(Instruction* I, bool isAdd);

};

} 

#endif
