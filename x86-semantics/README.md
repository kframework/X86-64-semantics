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

## Autogenerate k rules from strata
Let --file input is a file containing lst of all the opcodes which strata has the formula generated.

### Generated spec file to be use with kprove (tool used for smbolic execution)
```
./scripts/process_spec.pl --file docs/relatedwork/strata/non_vector_opcodes.txt --createspec
```
### Run kprove
```
./scripts/process_spec.pl --file docs/relatedwork/strata/non_vector_opcodes.txt --kprove
```
### Run Sanitization over the rules generated and create the k files
```
./scripts/process_spec.pl --file docs/relatedwork/strata/non_vector_opcodes.txt --postprocess
