# Run
```
test=20000113-1-0
 time krun -d /home/sdasgup3/Github/binary-decompilation/x86-semantics/semantics/ bin/$test.asm  '-cARGV=`.List`(.KList))))))' '-pARGV=printf %s' '-cREGV= regvalpair("RIP", mi(64, 0)) regvalpair("RAX",  mi(64, 0)) regvalpair("RBX"    , mi(64, 0)) regvalpair("RCX"    , mi(64, 0)) regvalpair("RDX"    , mi(64, 0)) regvalpair("RSI"    , mi(64, 0)) regvalpair("RDI"    , mi(64, 0)) regvalpair("RSP"    , mi(64, 0)) regvalpair("RBP"    , mi(64, 0)) regvalpair("R8"     , mi(64, 0)) regvalpair("R9"     , mi(64, 0)) regvalpair("R10"    , mi(64, 0)) regvalpair("R11"    , mi(64, 0)) regvalpair("R12"    , mi(64, 0)) regvalpair("R13"    , mi(64, 0)) regvalpair("R14"    , mi(64, 0)) regvalpair("R15"    , mi(64, 0)) regvalpair("CF"     , mi(1, 0)) regvalpair("PF" , mi(1, 0)) regvalpair("AF"     , mi(1, 0)) regvalpair("ZF"     , mi(1, 0)) regvalpair("SF"     , mi(1, 0)) regvalpair("OF"     , mi(1, 0)) regvalpair("YMM0"   ,  mi(256, 0)) regvalpair("YMM1"   ,  mi(256, 0)) regvalpair("YMM2"   ,  mi(256, 0)) regvalpair("YMM3"   ,  mi(256, 0)) regvalpair("YMM4"   ,  mi(256, 0)) regvalpair("YMM5"   ,  mi(256, 0)) regvalpair("YMM6"   ,  mi(256, 0)) regvalpair("YMM7"   ,  mi(256, 0)) regvalpair("YMM8"   ,  mi(256, 0)) regvalpair("YMM9"   ,  mi(256, 0)) regvalpair("YMM10"  ,  mi(256, 0)) regvalpair("YMM11"  ,  mi(256, 0)) regvalpair("YMM12"  ,  mi(256, 0)) regvalpair("YMM13"  ,  mi(256, 0)) regvalpair("YMM14"  ,  mi(256, 0)) regvalpair("YMM15"  ,  mi(256, 0))' --output-file Output/$test.kstate
```

# Generate Binaries
```
source cmd_worklist.txt
cat worklist.txt | parallel "./scripts/remove_directives.pl --file bin/{}.asm > bin/{}.tmp; mv bin/{}.tmp bin/{}.asm"
```
