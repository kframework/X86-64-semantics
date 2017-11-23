## To compile

```
cd x86-semantics
./scripts/run.pl --compile
```


## To test
```
cd  tests
make kstate // Checks succesful completion of krun and sores the final state (we call kstate).
make xstate // Executes gdb scrip to collect the hardware register states (we call xstate)
make compare // compare the above two states
make // All the above
```

## Autogenerate k files
We have templates file in `scripts/templates/*.tmpl` to be used for auto generating k files
```
cd x86-semantics/scripts/
./genfromtemplate.pl --templatedir templates/ -gendir ../instructions/
```
