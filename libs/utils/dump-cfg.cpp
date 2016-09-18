#define DEBUG_TYPE "dump_cfg"
#include "dump-cfg.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Constants.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/FileSystem.h"

using namespace llvm;

char dump_cfg::ID = 0;
static RegisterPass<dump_cfg> X("dumpcfg", "To dump the cfg in dot format");

bool dump_cfg::runOnModule(Module &Mod) {
  M = &Mod;
  dumpcfg();
  return false; // Analysis pass
}

void dump_cfg::dumpcfg() {

  std::string err_string;
  raw_fd_ostream dotfile("graph.dot", err_string, sys::fs::F_Text);
  dotfile << "digraph graphname { \n";

  for (const auto &F : *M) {
    StringRef fname = F.getName();
    for (auto &BB : F) {
      for (const_pred_iterator PI = pred_begin(&BB), E = pred_end(&BB); PI != E;
           ++PI) {
        dotfile << "\t" << fname + "_" + (*PI)->getName() << " -> "
                << fname + "_" + BB.getName() << "\n";
      }
    }
  }

  dotfile << "}";
  dotfile.close();
}
