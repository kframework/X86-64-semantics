## To build / Run

```
cat filelist.txt | parallel "echo {}; cd {}; kprove test-spec.k ~/Junk/dummy.k --directory /home/sdasgup3/Github/binary-decompilation/x86-semantics/semantics --smt_prelude /home/sdasgup3/Github/k5/k-distribution/include/z3/basic.smt2 ; cd .."
```
