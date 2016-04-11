#define DEBUG_TYPE "max_stack_height"
#include "max_stack_height.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Constants.h"

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

  dfva* dfvaInstance;
  for (Function::iterator BB = Func->begin(), E = Func->end(); BB != E; ++BB) {
    dfvaInstance = BBMap[BB];
    (*dfvaInstance)[GEN] = calculate_max_height_BB(BB);
  }
}

uint64_t 
max_stack_height::calculate_max_height_BB(BasicBlock *BB) {

  uint64_t  max_height = 0;
  for (BasicBlock::iterator I = BB->begin(), E = BB->end(); I != E; ++I) {
    if(LoadInst* ld_inst = dyn_cast<LoadInst>(&*I)) {

      const Value* ptr_op = ld_inst->getPointerOperand();
      StringRef ptr_op_name = ptr_op->getName();

      if(0 ==  ptr_op_name.compare("RBP_val") || 
          0 ==  ptr_op_name.compare("RSP_val")) {

        DEBUG(errs()<< *ld_inst << "\n");

        for (Value::user_iterator i = ld_inst->user_begin(), e = ld_inst->user_end(); 
            i != e; ++i) {
          if (Instruction *user_inst = dyn_cast<Instruction>(*i)) {
            unsigned opcode = user_inst->getOpcode();
            if(Instruction::Add == opcode || Instruction::Sub == opcode) {
                assert(user_inst->isBinaryOp());

                DEBUG(errs()<< " "  << *user_inst << " : " );

                Value* op1 = user_inst->getOperand(0);
                Value* op2 = user_inst->getOperand(1);
                int64_t offset = 0;
                uint64_t abs_offset = 0;
                ConstantInt *cosnt_val = NULL;


                assert(((NULL != dyn_cast<ConstantInt>(op1)) || 
                    (NULL != dyn_cast<ConstantInt>(op2))) && 
                    "One of operands should be constants");

                cosnt_val = dyn_cast<ConstantInt>(op1);
                if(NULL == cosnt_val) {
                  cosnt_val = dyn_cast<ConstantInt>(op2);
                }

                assert(NULL != cosnt_val && "offset is an variable expression");

                offset = cosnt_val->getLimitedValue();

                if(Instruction::Add == opcode && offset < 0) {
                  abs_offset = -1*offset;
                } else if(Instruction::Sub == opcode && offset > 0) {
                  abs_offset = offset;
                }
                max_height = max_height < abs_offset ? abs_offset : max_height;

                DEBUG(errs()<< abs_offset << "\n");
            }
          }
        } 

      }
    } 
  } 

  return max_height;
}

/*******************************************************************
 * Function :   perform_global_dfa
 * Purpose  :   perform the global data flow analysis
********************************************************************/
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
    errs() << Fname << "::" << BBname << "\n";
    for(uint32_t i = 0; i < TOTAL_DFA_VALUES; i++){
  
      switch(i) {
        case(IN)  : (errs() << "    IN "); break;
        case(GEN) : (errs() << "  GEN "); break;
        case(OUT) : (errs() << "  OUT "); break;
      }
      
      (errs() << (*dfvaInstance)[i]); 
    }
    (errs() << "\n------------\n"); 
  }
}
