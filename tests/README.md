## Parallel testing

### Run xrun
cat filelist.txt | parallel -j5 "echo ; echo {}; echo ===; cd {}; make cleanxstate ;cd ../" |& tee ~/Junk/log
cat filelist.txt | parallel -j5 "echo ; echo {}; echo ===; cd {}; make xstate ;cd ../" |& tee ~/Junk/log

### Run krun
cat filelist.txt | parallel -j5 "echo ; echo {}; echo ===; cd {}; make cleankstate ;cd ../" |& tee ~/Junk/log
cat filelist.txt | parallel -j5 "echo ; echo {}; echo ===; cd {}; make kstate ;cd ../" |& tee ~/Junk/log

### Compare
cat filelist.txt | parallel -j15 "echo ; echo {}; echo ===; cd {}; make compare ;cd ../" |& tee ~/Junk/log


### Instruction for adding tests
 - If we pass env variables, then we cannot compare rsi/rdi with the gdb output. Otherwise we can cpmpare those registers as well. 
