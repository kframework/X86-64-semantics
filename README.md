![Dependency tree of Source Code](https://github.com/sdasgup3/binary-decompilation/blob/master/x86-semantics/docs/reports/import_graph.png)

## Preparation - Download packages
```
mkdir Github // The reason for enforcing this directory is that the scripts are
             // hardcoded to pick from $home/Github/...
             // If you decide to put things in different place, you may need to
             // fix paths in the following scripts
             //
             // binary-decompilation/x86-semantics/process_spec.pl
             // binary-decompilation/x86-semantics/update_instructions_sematics.pl
             // binary-decompilation/x86-semantics/run.pl
             // binary-decompilation/x86-semantics/remove_directives.pl

cd !$
// Clone the following
// 2 and 3 are requred incase we need to gather statistics.
1. git clone https://github.com/sdasgup3/binary-decompilation.git [master]
2. git clone https://github.com/sdasgup3/x86-64-instruction-summary.git    
3. git clone --recursive  https://github.com/sdasgup3/strata-data-private.git  strata-data

// We should have your own 'llvm-verified-backend' instead. As the path of your
// clone are different, so we have to fix the paths in binary-decompilation/x86-semantics/process_spec.pl (search for compile)
// so that the proper modules are picked from your path.
4. git clone https://github.com/sdasgup3/llvm-verified-backend.git [k5-migration]

// I have a K5 branch which I maintain mainly for
// 1. All the floating points hooks that I have to support. All my changes can be rebased to current master. I will
create a pull request to merge all my changes to master k5, so that you do not
have to use different repos. Here are the changes
    https://github.com/sdasgup3/k5/commit/27ee855dadef5351cc8e87e1b7ef82aa0c464045
    https://github.com/sdasgup3/k5/commit/ee360bb1611d781af5747f8d4ba822d13a5c74e1
    https://github.com/sdasgup3/k5/commit/b826c0984e4881f0d775a894af3ff252dc314895
// 2. Some changes that we need for verification purposes: https://github.com/sdasgup3/k5/commit/37c4e76f04dbbd21260e3cc6ba16a44e7bfe4d48
git clone https://github.com/sdasgup3/k5.git [working branch]

Note: You will need 1, otherwise the kompile will fail.  You may not need 2.
For the time being, you may use my k5 repo and I will gives you a patch (by tomorrow) that you
need to apply to the public k5 master. I know you can get the patch by urself,
but that an extra work.
```

## To compile the x86-64 semantics encoded in K
The following will compile the semantics WITHOUT any rules for instructions (as the 'underTestInstructions' is empty). 
The reason is if we include all the instruction's rules, then the kompile/krun/kprove all will be
super slow. Hence, depending on which instructions sequences we are working on, we
include their rules in the 'underTestInstructions' directory and compile them.
```
cd binary-decompilation/x86-semantics/semantics
mkdir -p underTestInstructions/
../scripts/process_spec.pl --compile
```

## Running X86 programs with the semantics

### Running single program: bubblesort 
```
cd  binary-decompilation/x86-semantics/tests/Programs/bubblesort/

// Populate the 'underTestInstructions' directory with relevant
// rules corresponding to instructions in bubblesort program.
../../../scripts/collect_instructions_semantics.pl --file test.s

make cleankstate; make kstate  // Checks successful completion of krun and stores the final state in Output/test.kstate

If you want to generate a freash .s file:
gcc test.c -fno-diagnostics-show-caret -fdiagnostics-color=never    -O0  -w  -lm  -march=haswell -fno-asynchronous-unwind-tables -mlong-double-64 -mno-80387 -S -o test.asm
binary-decompilation/x86-semantics/scripts/remove_directives.pl --i --file test.s 
```


## Running kprove
 - Currently, krove is supported on a different branch 'progVerication'. I am planning to merge 'progVerication' with master soon(ETD: tomorrow).
  ```
  git clone https://github.com/sdasgup3/binary-decompilation.git [progVerication]

  ```
 - All the program verification example are there in program-veriifcation
   folder.
   ```
    cd binary-decompilation/x86-semantics/program-veriifcation
    gvim README.md // instructions for execution
   ```
