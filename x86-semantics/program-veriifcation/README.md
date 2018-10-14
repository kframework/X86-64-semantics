## To build / Run

```
cat filelist.txt | parallel "echo {}; cd {}; kprove test-spec.k --directory ~/Github/binary-decompilation/x86-semantics/semantics --smt_prelude ~/Github/k5/k-distribution/include/z3/basic.smt2 ; cd .."
```
