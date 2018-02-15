![Dependency tree of Source Code](docs/import_graph.png)

## To compile

```
cd x86-semantics
./scripts/run.pl --compile
```


## To test
```
cd  tests
make kstate // Checks succesful completion of krun and stores the final state (we call kstate).
make xstate // Executes gdb scrip to collect the hardware register states (we call xstate)
make compare // compare the above two states
make // All the above
```

## Autogenerate k rules from strata for register only instruction variants
Let --file input is a file containing lst of all the opcodes which strata has the formula generated.

### Generated spec file to be use with kprove (tool used for smbolic execution)
```
./scripts/process_spec.pl --file docs/relatedwork/strata/stratum_0.txt --createspec
```
### Run kprove
```
./scripts/process_spec.pl --file docs/relatedwork/strata/stratum_0.txt --kprove
```
### Run Sanitization over the rules generated and create the k files
```
./scripts/process_spec.pl --file docs/relatedwork/strata/non_vector_opcodes.txt --postprocess
```

### --all ==  --createspec + --kprove + --postprocess
```
./scripts/process_spec.pl --file docs/relatedwork/strata/stratum_0.txt --postprocess
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
