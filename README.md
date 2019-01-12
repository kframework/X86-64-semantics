![Dependency tree of Source Code](https://github.com/sdasgup3/binary-decompilation/blob/master/x86-semantics/docs/reports/import_graph.png)

## Prerequisites
 - Download X86 and LLVM Semantics in K.
  ```
  git clone https://github.com/kframework/X86-64-semantics.git
  git clone https://github.com/theo25/llvm-verified-backend.git [f_llvm_parser branch]
  ```

 - Download & Install K tool [README](https://github.com/kframework/k/blob/master/README.md)

## To compile the x86-64 semantics
  ```
  cd X86-semantics/semantics
  ../scripts/kompile.pl [--backend java]
  ```
  - Note: The above command will compile the semantics **WITHOUT** any
  semantics rules for instructions (as the 'underTestInstructions' is empty).

## Concrete execution of a binary (compiled from a C program)
```
../scripts/run-single-c-file.sh ../tests/Programs/bubblesort/test.c |& tee /tmp/run.log
```
