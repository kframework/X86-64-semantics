![Dependency tree of Source Code](docs/import_graph.png)

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

### More info and corresponding [Issue Link](https://github.com/sdasgup3/binary-decompilation/issues/49)
The idea is to convert the K rules like
```
convToRegKeys(R2) |-> (extractMInt(addMInt(concatenateMInt(mi(1, 0), getParentValue(R1, RSMap)), concatenateMInt(mi(1, 0), getParentValue(R2, RSMap))), 1, 65) )
```
to smt2 format:
```
PK_R2 = (Extract( ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 1 - 1, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) ).size() - 65, ( Concat(ZERO1, R1) + Concat(ZERO1, R2) )  )  )
```
Also to convert the strata's bit-vector formula or rule  like
```
%rbx   : (plus (concat <0x0|1> <%rcx|64>) (concat <0x0|1> <%rbx|64>))[63:0]
```
to smt2 format
```
PS_R2 = (Extract (63, 0, (((Concat((ZERO1), (R1))) + (Concat((ZERO1), (R2)))))))
```
and to check if
```
Not (PK_R2 == PS_R2)  is unsat
```

In case of floating point instructions, it is not possible for efficiently encode the K rules as the resultant z3 formula span multiple Z3 theories (bit-vector, Int, Float), making z3 super slow.
On the other hand, strata's rule does not care about the operation semantics of those instruction, instead they represent it as uninterpreted function. 
In order to prove formal equivalence of K and strata's rule we decided to emit k rules involving the same uninterpreted functions as strata generates. 

For that purpose, there are different version of base Instructions `instructions_with_uif/baseInstructions/` and derived instructions `instructions_with_uif/derivedInstructions/` and they are used **ONLY** for proving equivalences. Having said that, we have other scripts to compile the rules in the above folders and generating and proving he formulas.

Following are the walk-through of the entire process:

### How to compile using the uninterpreted version of base and derived Instructions  
```
cd x86-semantics
./scripts/process_spec.pl --compile --useuif 
```

### How to generate the z3 formulas 
```
cd x86-semantics
./scripts/process_spec.pl --getz3formula 
```

### How to prove equivalence between K and Strata' rules
```
cd x86-semantics
./scripts/process_spec.pl --z3prove 
```

## Autogenerate k rules from strata for imm-register instruction variants
### To generate
```
./scripts/process_spec.pl --file docs/relatedwork/strata/generalizedImm.txt --getimm
```

### To diff with corresponding register variant
```
./scripts/process_spec.pl --file docs/relatedwork/strata/generalizedImm.txt --getimmdiff
```
