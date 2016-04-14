#define DEBUG_TYPE "max_stack_height"
#include "max_stack_height.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Constants.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/IntrinsicInst.h"

#define RET_ADDRESS_SIZE 8

using namespace llvm;

char max_stack_height::ID = 0;
static RegisterPass<max_stack_height>
X("ssh", "To Determine the max static stack height (ssh) of a function");

dfa_values
operator+(dfa_values &x, dfa_values &y) {
  dfa_values ret_val = { 
      x[ACTUAL_ESP] + y[ACTUAL_ESP], 
      x[MAX_DISP_OF_ESP] + y[MAX_DISP_OF_ESP], 
      x[MAX_DISP_OF_EBP] + y[MAX_DISP_OF_EBP]
  };

  return ret_val;
}

bool 
max_stack_height::runOnFunction(Function &F) {
  Func = &F;

  DEBUG(errs() << Func->getName() << "\n ==========================================\n");
  
  perform_dfa();

  print_height();

  return false; // Analysis pass
}

/*******************************************************************
  * Function :   perform_dfa
  * Purpose  :   Entry point for DFA
********************************************************************/
void
max_stack_height::perform_dfa() {
  initialize_framework();
  
  perform_const_dfa();
  
  perform_global_dfa();

  //print_height();

}

/*******************************************************************
  * Function :   initialize_framework
  * Purpose  :   Allocates the data flow values
********************************************************************/
void
max_stack_height::initialize_framework() {
  for (Function::iterator BB = Func->begin(), E = Func->end(); BB != E; ++BB) {
    dfa_functions* dfvaInstance = new dfa_functions(TOTAL_FUNCTIONS, dfa_values(TOTAL_VALUES,0));
    BBMap[BB] = dfvaInstance;
  }
}

/*******************************************************************
 * Function :   perform_const_dfa
 * Purpose  :   Calculate the local sets GEN
********************************************************************/
void
max_stack_height::perform_const_dfa() {

  dfa_functions* dfvaInstance;
  for (Function::iterator BB = Func->begin(), E = Func->end(); BB != E; ++BB) {
    DEBUG(errs() << BB->getName() << "\n-----------------------------------\n");
    dfvaInstance = BBMap[BB];
    (*dfvaInstance)[GEN] = calculate_max_height_BB(BB);
    DEBUG(errs() << "\n-----------------------------------\n");
  }
}


/*******************************************************************
 * Function :   calculate_max_height_BB
 * Purpose  :   Calculate the max didsplacement of esp or from rbp
********************************************************************/
std::vector<height_ty> 
max_stack_height::calculate_max_height_BB(BasicBlock *BB) {

  std::vector<height_ty>  ret_val(3,0);

  //For the entry: find the llvm alloca inst for rsp_val, rbp_val
  if(pred_begin(BB) == pred_end(BB)) {
    AllocaInst* alloca_inst;
    for (auto &I : *BB) { 
      if(NULL != (alloca_inst = dyn_cast<AllocaInst>(&I))) {
        if(alloca_inst->getName().equals("RSP_val")) {
          llvm_alloca_inst_rsp = alloca_inst;
        } else if (alloca_inst->getName().equals("RBP_val")) {
          llvm_alloca_inst_rbp = alloca_inst;
        }
      }
    }
  }

  assert(NULL != llvm_alloca_inst_rsp && "BB visited before Entry !!!");

  // Initialize 
  InstMap[llvm_alloca_inst_rsp] = 0;
  max_dis_of_esp = max_dis_of_ebp = 0;

  visit(*BB);

  ret_val[ACTUAL_ESP] = InstMap[llvm_alloca_inst_rsp];
  ret_val[MAX_DISP_OF_ESP] = max_dis_of_esp;
  ret_val[MAX_DISP_OF_EBP] = max_dis_of_ebp;

  DEBUG(errs() << "GEN: " << ret_val[ACTUAL_ESP] << ", " << ret_val[MAX_DISP_OF_ESP] << ", " << ret_val[MAX_DISP_OF_EBP]  << "\n");

  //Clean up
  InstMap.clear();
  max_dis_of_esp = max_dis_of_ebp = 0;

  return ret_val;
}

void
max_stack_height::visitLoadInst(LoadInst     &I) {
  Value* ld_ptr_op = I.getPointerOperand();
  if(InstMap.count(ld_ptr_op)) {
    InstMap[&I] = InstMap[ld_ptr_op];
    debug(&I, &I);
  }
}

void
max_stack_height::visitStoreInst(StoreInst     &I) {
  Value* st_ptr_op = I.getPointerOperand();
  Value* st_val_op = I.getValueOperand();
  if(InstMap.count(st_ptr_op) && InstMap.count(st_val_op)) {
    InstMap[st_ptr_op] = InstMap[st_val_op];
    debug(&I, NULL);
  }
}

void
max_stack_height::visitExtractValueInst(ExtractValueInst &I) {
  Value* op1 = I.getOperand(0);
  if(InstMap.count(op1)) {
    InstMap[&I] = InstMap[op1];
    debug(&I, &I);
  }
}

void
max_stack_height::visitCallInst(CallInst &I) {
  Function *called_func = I.getCalledFunction();
  assert(NULL != called_func && "indirect func call found");

  if(false == called_func->isDeclaration()) {
    InstMap[llvm_alloca_inst_rsp] += RET_ADDRESS_SIZE;
    debug(&I, NULL);
  } 
}

void
max_stack_height::visitIntrinsicInst(IntrinsicInst &I) {

  unsigned ty = I.getIntrinsicID();
  switch (ty) {
    case Intrinsic::sadd_with_overflow:
    case Intrinsic::uadd_with_overflow:
      {
        visitAddSubHelper(&I, true);
        break;
      }
    case Intrinsic::ssub_with_overflow:
    case Intrinsic::usub_with_overflow: 
      {
        visitAddSubHelper(&I, false);
        break;
      }
    default:
      break;
  }
  return;
}

void 
max_stack_height::visitSub(BinaryOperator &I) {
  visitAddSubHelper(&I, false);
  return;
}

void
max_stack_height::visitAddSubHelper(Instruction* I, bool isAdd) {
  Value* op1 = I->getOperand(0);
  Value* op2 = I->getOperand(1);

  if(0 == InstMap.count(op1)) {
    return;
  }

  ConstantInt *cosnt_val = NULL;
  height_ty offset = 0;

  if(NULL != (cosnt_val = dyn_cast<ConstantInt>(op2))) {
    offset = cosnt_val->getLimitedValue();

    if(isAdd) {
      InstMap[I] = InstMap[op1] + offset;
    } else {
      InstMap[I] = InstMap[op1] - offset;
    }

    max_dis_of_esp  = std::min(max_dis_of_esp, InstMap[I]);
    debug(I, I);
    return;
  }

  if(InstMap.count(op2)) {
    InstMap[I] = InstMap[op1] + InstMap[op2];
    max_dis_of_esp  = std::min(max_dis_of_esp, InstMap[I]);
    debug(I, I);
    return;
  }

  assert(0 && "offset is an variable expression");
  return;
}

void 
max_stack_height::visitAdd(BinaryOperator &I) {
  Value* op1 = I.getOperand(0);
  Value* op2 = I.getOperand(1);

  if(0 == InstMap.count(op1) &&  0 == InstMap.count(op2)) {
    return;
  }

  ConstantInt *cosnt_val = NULL;
  height_ty offset = 0;
  if(InstMap.count(op1) && NULL != (cosnt_val = dyn_cast<ConstantInt>(op2))) {
    offset = cosnt_val->getLimitedValue();
    InstMap[&I] = InstMap[op1] + offset;
    max_dis_of_esp  = std::min(max_dis_of_esp, InstMap[&I]);
    debug(&I, &I);
    return;
  }

  if(InstMap.count(op2) && NULL != (cosnt_val = dyn_cast<ConstantInt>(op1))) {
    offset = cosnt_val->getLimitedValue();
    InstMap[&I] =InstMap[op2] + offset;
    max_dis_of_esp  = std::min(max_dis_of_esp, InstMap[&I]);
    debug(&I, &I);
    return;
  }

  if(InstMap.count(op1) && InstMap.count(op2)) {
    InstMap[&I] = InstMap[op1] + InstMap[op2];
    max_dis_of_esp  = std::min(max_dis_of_esp, InstMap[&I]);
    debug(&I, &I);
    return;
  }
  
  assert(0 && "offset is an variable expression");
  return;
}


/*******************************************************************
 * Function :   perform_global_dfa
 * Purpose  :   perform the global data flow analysis
********************************************************************/
void
max_stack_height::perform_global_dfa() {

  bool Changed = false;
  dfa_values top(3,0) ;
  dfa_values bottom(3,-1) ;
  dfa_values initVector(3,0);

  // initialize OUT set of each basic block to top
  for (Function::iterator BB = Func->begin(), E = Func->end(); BB != E; ++BB) {
    dfa_functions* dfvaInstance = BBMap[BB];
    (*dfvaInstance)[OUT] = top ;
  }

  do {
    Changed = false;
    ReversePostOrderTraversal<Function*> RPOT(Func);

    for (ReversePostOrderTraversal<Function*>::rpo_iterator I = RPOT.begin(), 
        E = RPOT.end(); I != E; ++I) {
      BasicBlock* BB = *I;
      dfa_functions* dfvaInstance = BBMap[BB];

      // this vector would be initialized accordingly later by the 
      // first predecessor while taking a meet over predecessors
      dfa_values meetOverPreds = {0,0,0};

      // go over predecessors and take a meet
      bool first = true;
      for(pred_iterator PI = pred_begin(BB), PE = pred_end(BB); PI!=PE; ++PI) {
          
        dfa_values meetExpression =  (*(BBMap[*PI]))[OUT];

        if(first) {
          first = false;
          meetOverPreds = meetExpression;
        } else {
          if(meetOverPreds != meetExpression) {
            meetOverPreds  = {-1,-1,-1};
          } 
        }
      }
   
      // no predecessor, this is the start block s.
      if(first) {
        meetOverPreds = initVector;
      }

      // 'In' as a function of pred 'Out's
      (*dfvaInstance)[IN] = meetOverPreds;   
      dfa_values old_out = (*dfvaInstance)[OUT];

      // 'Out' as a function of 'In'
      if((*dfvaInstance)[IN] == bottom) {
        (*dfvaInstance)[OUT] =  {-1,-1,-1};
      } else {
        (*dfvaInstance)[OUT][ACTUAL_ESP]  = ((*dfvaInstance)[IN][ACTUAL_ESP] + (*dfvaInstance)[GEN][ACTUAL_ESP]);
        (*dfvaInstance)[OUT][MAX_DISP_OF_ESP]  = std::min( 
              (*dfvaInstance)[IN][ACTUAL_ESP] + (*dfvaInstance)[GEN][MAX_DISP_OF_ESP], (*dfvaInstance)[IN][MAX_DISP_OF_ESP]);
      }
  
      dfa_values new_out = (*dfvaInstance)[OUT];
      if(old_out != new_out) {
        Changed = true;
      }
    }
  } while(Changed);
}


/*******************************************************************
 * Function :   debug
 * Purpose  :   print the data structure InstMap
********************************************************************/
void
max_stack_height::debug(Value* I, Value* J) {
  height_ty stored_pointer = 0;
  if(NULL != J) {
    stored_pointer = InstMap[J];
  }

  DEBUG(errs()  <<   *I << " :::  ");
  if(NULL == J) {
    DEBUG(errs()  << "[I] = NULL" << " : ");
  } else {
    DEBUG(errs()  << "[I] = " << stored_pointer << " : ");
  }

  DEBUG(errs()  <<  "[ESP] = " << InstMap[llvm_alloca_inst_rsp] << " : " << 
      "MX ESP = " << max_dis_of_esp << " : " << 
      "[EBP] = " << InstMap[llvm_alloca_inst_rbp] << " : " << 
      "MX EBP = " << max_dis_of_ebp << "\n" 
      );
}

/*******************************************************************
 * Function :   print_void
 * Purpose  :   print the data flow values for each BB
********************************************************************/
void
max_stack_height::print_dfa_equations() {

  dfa_functions* dfvaInstance;
  StringRef Fname = Func->getName();
  for (Function::iterator BB = Func->begin(), E = Func->end(); BB != E; ++BB) {
    dfvaInstance = BBMap[BB];
    StringRef BBname = (*BB).getName();
    errs() << Fname << "::" << BBname << "\n";
    for(uint32_t i = 0; i < TOTAL_FUNCTIONS; i++){
  
      switch(i) {
        case(IN)  : (errs() << "    IN "); break;
        case(GEN) : (errs() << "  GEN "); break;
        case(OUT) : (errs() << "  OUT "); break;
      }
      
      errs() << " [ " <<  
                      (*dfvaInstance)[i][ACTUAL_ESP] <<       "||" <<  
                      (*dfvaInstance)[i][MAX_DISP_OF_ESP] <<  "||" <<
                      (*dfvaInstance)[i][MAX_DISP_OF_EBP] << 
                  " ]\n"; 
    }
    //(errs() << "\n------------\n"); 
  }
}

/*******************************************************************
 * Function :   print_height
 * Purpose  :   print the data flow values for each BB
********************************************************************/
void
max_stack_height::print_height() {
  height_ty ret_val = 0;
  dfa_functions* dfvaInstance;
  StringRef Fname = Func->getName();
  for (auto &BB : *Func) {
    dfvaInstance = BBMap[&BB];
    ret_val = std::min(ret_val, std::min( (*dfvaInstance)[IN][MAX_DISP_OF_ESP],  (*dfvaInstance)[OUT][MAX_DISP_OF_ESP] ));
  }

  errs() <<  "Height[ " << Fname << " ]" << ret_val << "\n";
}
