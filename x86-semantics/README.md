![Dependency tree of Source Code](https://github.com/sdasgup3/binary-decompilation/blob/master/x86-semantics/docs/reports/import_graph.png)

## To compile the x86-64 semantics encoded in K

```
cd x86-semantics
./scripts/process_spec.pl --compile
```


## To test
```
cd  tests
make kstate // Checks successful completion of krun and stores the final state (we call kstate).
make xstate // Executes gdb scrip to collect the hardware register states (we call xstate)
make compare // compare the above two states
make // All the above
```

## Auto generate k rules from strata for register only instruction variants
Let --file input is a file containing lst of all the opcodes which strata has the formula generated.

### Generated spec file to be use with kprove (tool used for symbolic execution)
```
./scripts/process_spec.pl --file docs/relatedwork/strata/stratum_0.txt --createspec
```
### Run kprove
```
./scripts/process_spec.pl --file docs/relatedwork/strata/stratum_0.txt --kprove
```
### Run Sanitation over the rules generated and create the k files
```
./scripts/process_spec.pl --file docs/relatedwork/strata/non_vector_opcodes.txt --postprocess
```

### --all ==  --createspec + --kprove + --postprocess
```
./scripts/process_spec.pl --file docs/relatedwork/strata/stratum_0.txt --postprocess
```

## Equivalence proof of K's rule Vs Strata's bit-vector formula
### z3 formula directory 
`z3EquivFormulas/` contain one Python file for each instruction. The file contains the encoded z3 formula for K and strata's rule and the code to prove the equivalence between them.

### More info 
  - [Wiki Link](https://github.com/sdasgup3/binary-decompilation/wiki/Proving-Equivalence-of-K-Rules-and-Strata's-BitVector-Formulas(BVFs))
  - [Issue Link](https://github.com/sdasgup3/binary-decompilation/issues/49)


## Get opcode support statistics of Strata and McSema
```
./scripts/process_spec.pl --comparemcsema
```

## Autogenerate k rules from strata for imm-register instruction variants
### To generate
```
./scripts/process_spec.pl  --getimm
```

### To diff with corresponding register variant
```
./scripts/process_spec.pl --getimmdiff
```
