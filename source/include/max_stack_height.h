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

namespace llvm {

// enum for the data flow values associated with each basic block
enum dfa_values {
  IN = 0,
  OUT,
  GEN,
  TOTAL_DFA_VALUES // = 3
  };
typedef int64_t height_ty;


class max_stack_height : public FunctionPass {
  private:
    Function* Func;

    typedef std::vector<height_ty> dfva;      

    // Maps each Basic Block to its data flow values (IN, OUT, GEN)
    DenseMap<BasicBlock*, dfva*> BBMap;
    // Maps each Instruction, involving rsp, to the value of the rsp. 
    DenseMap<Value*, height_ty> InstMap;
     
    void perform_dfa() ;
    void initialize_dfa_framework();
    void perform_const_dfa();
    void perform_global_dfa();
    void print_height();
    void print_adt();
    height_ty calculate_max_height_BB(BasicBlock *BB);
      

  public:
    static char ID;

    max_stack_height() : FunctionPass (ID) {}

    virtual bool runOnFunction(Function &F);

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.setPreservesAll();
    };
};

} 

#endif
