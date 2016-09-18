//===------------------------ dump_cfg.h --------------------------===//
//
// This file provide class definition and functionality to dump the cfg in dot format 
//
//===----------------------------------------------------------------------===//

#ifndef __DUMP_CFG_H__
#define __DUMP_CFG_H__


#include "llvm/Pass.h"

namespace llvm {

class dump_cfg :  public ModulePass
{
  private:
    Module *M;


    //Maps each Basic Block some metadata info
    DenseMap<BasicBlock*, int> BBMap;
    
  public:
    static char ID;

    dump_cfg() : ModulePass (ID) {
    }

    virtual bool runOnModule(Module &M);
    void dumpcfg();

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.setPreservesAll();
    };

};

} 

#endif
