#include "stack_deconstructor.h"
#include "llvm/AsmParser/Parser.h"
#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/FileSystem.h" // For sys::fs::F_RW
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/PrettyStackTrace.h"
#include "llvm/Support/Signals.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/SystemUtils.h"
#include "llvm/Support/raw_ostream.h"

#include <memory>

using namespace llvm;

static cl::opt<std::string> InputFilename(cl::Positional,
                                          cl::desc("<input .ll or .bc file>"),
                                          cl::init("-"));

static cl::opt<std::string> OutputFilename("o", cl::desc("<outpur .bc file>"),
                                           cl::init("allina.output.bc"));

static cl::opt<bool>
    DisableVerify("disable-verify", cl::Hidden,
                  cl::desc("Do not run verifier on input LLVM (dangerous!)"));

int main(int argc, char **argv) {
  // Print a stack trace if we signal out.
  sys::PrintStackTraceOnErrorSignal(StringRef(argv[0]));
  PrettyStackTraceProgram X(argc, argv);
  llvm_shutdown_obj Y;

  cl::ParseCommandLineOptions(argc, argv, "Alllina\n");

  // Parse the input LLVM IR file into a module.
  SMDiagnostic Err;
  LLVMContext Context;
  std::unique_ptr<Module> Mod(parseIRFile(InputFilename, Err, Context));
  if (!Mod) {
    Err.print(argv[0], errs(), /*showColors=*/true);
    return 1;
  }

  if (!DisableVerify) {
    std::string Err;
    if (verifyModule(*Mod.get(), &errs())) {
      errs() << "Verify Negative\n";
      return 1;
    }
  }

  // Create a pass manager and fill it with the passes we want to run.
  legacy::PassManager PM;
  PM.add(new stack_deconstructor());
  PM.run(*Mod);

  // Output the Module content
  std::error_code EC;
  raw_fd_ostream fd(OutputFilename, EC, sys::fs::F_RW);
  if (EC) {
    llvm::errs() << "Could not open output file " << EC.message();
    return 1;
  }
  WriteBitcodeToFile(Mod.get(), fd, true);

  return 0;
}
