
#define DEBUG_TYPE "max_stack_height"
#include "max_stack_height.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"


using namespace llvm;

char max_stack_height::ID = 0;
static RegisterPass<max_stack_height>
X("ssh", "To Determine the max static stack height (ssh) of a function");

bool 
max_stack_height::runOnFunction(Function &F) {
  Func = &F;
  
  perform_dfa();

  return false; // Analysis pass
}

/*******************************************************************
  * Function :   perform_dfa
  * Purpose  :   Entry point for DFA
********************************************************************/
void
max_stack_height::perform_dfa() {
  initialize_dfa_framework();
  
  perform_const_dfa();
  
  perform_global_dfa();

  print_flow_equations();

}

/*******************************************************************
  * Function :   initialize_dfa_framework
  * Purpose  :   Allocates the data flow values
********************************************************************/
void
max_stack_height::initialize_dfa_framework() {
  for (Function::iterator BB = Func->begin(), E = Func->end(); BB != E; ++BB) {
    dfva* dfvaInstance = new dfva(3,0);
    BBMap[BB] = dfvaInstance;
  }
}

/*******************************************************************
 * Function :   perform_const_dfa
 * Purpose  :   Calculate the local sets GEN
********************************************************************/
void
max_stack_height::perform_const_dfa() {

}

void
max_stack_height::perform_global_dfa() {

}

/*******************************************************************
 * Function :   print_flow_equations
 * Purpose  :   print the data flow values for each BB
********************************************************************/
void
max_stack_height::print_flow_equations() {

  dfva* dfvaInstance;
  StringRef Fname = Func->getName();
  for (Function::iterator BB = Func->begin(), E = Func->end(); BB != E; ++BB) {
    dfvaInstance = BBMap[BB];
    StringRef BBname = (*BB).getName();
    DEBUG(errs() << Fname << "::" << BBname << "\n");
    for(uint32_t i = 0; i < TOTAL_DFA_VALUES; i++){
  
      switch(i) {
        case(IN) : DEBUG(errs() << "    IN "); break;
        case(GEN) : DEBUG(errs() << "  GEN "); break;
        case(OUT) : DEBUG(errs() << "  OUT "); break;
      }
      
      DEBUG(errs() << (*dfvaInstance)[i]); 
    }
    DEBUG(errs() << "\n------------\n"); 
  }
}
