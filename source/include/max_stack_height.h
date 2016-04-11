#ifndef __MAX_STACK_HEIGHT_H__
#define __MAX_STACK_HEIGHT_H__


#include "llvm/Pass.h"
#include "llvm/IR/Instructions.h"

namespace llvm {

// enum for the bitVectors associated with each basic block
enum dfa_values {
  IN = 0,
  OUT,
  GEN,
  TOTAL_DFA_VALUES // = 3
  };
typedef int64_t height_ty;


// class This pass provides the functionality to find the binary virtual address  and
// binary instruction  corresponding to a llvm instruction.
class max_stack_height : public FunctionPass {
  private:
    Function* Func;

      // Maps each Basic Block to a std::pair of , each of which
    // represents a property as defined in bitVectors enum 
    typedef std::vector<height_ty> dfva;      
    DenseMap<BasicBlock*, dfva*> BBMap;
     
    // functions description along with the definition 
    void perform_dfa() ;
    void initialize_dfa_framework();
    void perform_const_dfa();
    void perform_global_dfa();
    void print_flow_equations();
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
