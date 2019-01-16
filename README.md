
# X86-64 Semantics
The project presents the most complete and thoroughly tested formal semantics
of x86-64 to date. Our semantics faithfully formalizes all the non-deprecated,
   sequential user-level instructions of the x86-64 Haswell instruction set
   architecture.  This totals 3155 instruction variants, corresponding to 774
   mnemonics. The semantics is fully executable and has been tested against
   more than 7,000 instruction-level test cases and the GCC torture test suite.

# User Guide

## Prerequisites
 - Download X86 and LLVM semantics defined in K.
  ```
  git clone https://github.com/kframework/X86-64-semantics.git
  git clone https://github.com/theo25/llvm-verified-backend.git [f_llvm_parser branch]
  ```

 - Download & Install K tool [README](https://github.com/kframework/k/blob/master/README.md)

## To compile the x86-64 semantics
  ```
  cd X86-semantics/semantics
  ../scripts/kompile.pl [--backend java]  // Default is ocaml backend
  ```
## Concrete execution of a binary (compiled from a C program)
```
../scripts/run-single-c-file.sh ../tests/Programs/bubblesort/test.c |& tee /tmp/run.log
```

## Testing the semantics
Empowered by the fact that we can directly execute the semantics using the K
framework, we validated our model by co-simulating it against a real machine.
During co-simulation, we execute a machine program on the processor as well as
on our K model and compare the execution results after every instruction. The
co-simulation experiments are done in the following two phases:

1. Instruction level validation: Testing individual instructions

  - Batch testing: All the tests in a directory are fired in parallel. The
  test-cases are specified in a file named `filelist.txt`
    ```
    cd tests/single-instruction-tests
    ./run-tests.sh --all [--jobs 5]
      // Which subsumes the following sequence of commands
      // ./run-tests.sh --cleankstate // Remove the old krun output logs.
      // ./run-tests.sh --cleanxstate // Remove the old gdb script output logs.
      // ./run-tests.sh --cleancstate //  Remove the old compare logs
      // ./run-tests.sh --kstate      // Collect the semantics of all the
                                      // instructions composing all the
                                      // test-cases, Compile the X86 semantics
                                      // using the collected instruction
                                      // semnatics, and Execute krun on each of
                                      // the test-case.
      // ./run-tests.sh --xstate      // Execute dn script and generate logs.
      // ./run-tests.sh --compare     // Compare the krun ad gdb script logs.
    ```
  - Individual testing: Running each test in isolation.
    ```
    cd tests/single-instruction-tests/adc
    make collect  // Collect semantic rules of all the instructions composing
                  // the test-case
    make kompile  // Compile the X86 semantics using the collected instruction
                  // semnatics.
    make cleanktest   //  Remove the old krun output logs.
    make cleanxstate  //  Remove the old gdb script output logs.
    make cleancstate  //  Remove the old compare logs
    make ktest        //  Execute krun on the test-case and generate krun logs.
    make xstate       //  Execute dn script and generate logs.
    make comapre      //  Compare the krun ad gdb script logs.
    ```

2. Program level validation: Testing combination of instructions as a part of
real-world programs.
```
cd tests/program-tests
./run-tests.sh --cleankstate
./run-tests.sh --kstate
```

# Developer Guide
![Dependency tree of Source Code](https://github.com/kframework/X86-64-semantics/blob/master/docs/reports/import_graph.png)

## Directory structure

  - docs: Hosts miscellaneous documents.
  - program-verification: Hosts few applications of our formal semantics.
  - tests: Hosts test-cases for testing the semantics.
  - scripts: Hosts scripts used for compiling/executing/testing he semantics.
  - semantics: Hosts the semantics of individual instruction and execution
  environment.
    - Following are the K-definition files specifying the semantics of execution environment.
      - float-conversions.k
      - x86-builtin.k
      - x86-env-init.k
      - x86-flag-checks-syntax.k
      - x86-memory.k
      - x86-syntax.k
      - x86-abstract-semantics.k
      - x86-c-library.k
      - x86-fetch-execute.k
      - x86-mint-wrapper.k
      - x86-verification-lemmas.k
      - x86-abstract-syntax.k
      - x86-configuration.k
      - x86-flag-checks.k
      - x86-loader.k
      - x86-semantics.k
    - Following are the K-definition files specifying the semantics of individual instructions.
      - registerInstructions/\*.k: Semantics of register only instructions
      - immediateInstructions/\*.k: Semantics of immediate  instructions
      - memoryInstructions/\*.k: Semantics of memory instructions
      - systemInstructions/\*.k: Semantics of system & control flow instructions.
      - extras/\*.k: Semantics of instruction having multiple possible
      representations. For example, `movabsq movabsq:Opcode  Imm64:Imm, R2:R64`
      is semantically equivalent to `movq  Imm64, R2`.
