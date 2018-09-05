![Dependency tree of Source Code](https://github.com/sdasgup3/binary-decompilation/blob/master/x86-semantics/docs/reports/import_graph.png)

## To compile the x86-64 semantics encoded in K

```
cd x86-semantics/semantics
mkdir -p underTestInstructions/    
../scripts/process_spec.pl --compile
```


## Running X86 programs with the semantics

### Running single program: bubblesort 
```
cd  binary-decompilation/x86-semantics/tests/Programs/bubblesort/

// Populate the 'underTestInstructions' directory with relevant 
// rules corresponding to instructions in bubblesort program.

// Before running the following script, replace the lib paths (As 
// mentioned in the script itself) in the script with your own path

../../../scripts/collect_instructions_semantics.pl --file test.s

make cleankstate; make kstate  // Checks successful completion of krun and stores the final state in Output/test.kstate
```
