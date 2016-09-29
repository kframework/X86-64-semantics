#include "llvm/IR/LLVMContext.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/IR/Verifier.h"
#include "llvm/AsmParser/Parser.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/PrettyStackTrace.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/Signals.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/SystemUtils.h"
#include <memory>

using namespace llvm;

static cl::opt<std::string>
InputFilename(cl::Positional, cl::desc("<input .ll or .bc file>"), cl::init("-"));

static cl::opt<bool>
DisableVerify("disable-verify", cl::Hidden,
              cl::desc("Do not run verifier on input LLVM (dangerous!)"));

int main(int argc, char **argv) {
  // Print a stack trace if we signal out.
  sys::PrintStackTraceOnErrorSignal(StringRef(argv[0]));
  PrettyStackTraceProgram X(argc, argv);
  LLVMContext Context;
  llvm_shutdown_obj Y;  // Call llvm_shutdown() on exit.
  cl::ParseCommandLineOptions(argc, argv, "Demo tool\n");

  // Parse the file now...
  // Guess the file type from extension
  SMDiagnostic Err;
  std::unique_ptr<Module> Mod(parseIRFile(argv[1], Err, Context));
  if (!Mod == 0) {
    Err.print(argv[0], errs(), /*showColors=*/ true);
    return 1;
  }

  if (!DisableVerify) {
    std::string Err;
    if (verifyModule(*Mod.get(), &errs() )) {
      errs() << "Assembly parsed, but does not verify a correct\n";
      return 1;
    }
  }

  errs() << "Here's the assembly:\n" << *Mod.get();

  return 0;
}
