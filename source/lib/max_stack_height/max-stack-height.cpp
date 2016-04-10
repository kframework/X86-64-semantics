#include "max_stack_height.h"


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

void
max_stack_height::perform_dfa() {

}

void
max_stack_height::initialize_dfa_framework() {

}

void
max_stack_height::perform_const_dfa() {

}

void
max_stack_height::perform_global_dfa() {

}

void
max_stack_height::print_flow_equations() {

}
