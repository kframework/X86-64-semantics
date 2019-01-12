## Parallel testing

### Run xrun
cat filelist.txt | parallel -j5 "echo ; echo {}; echo ===; cd {}; make cleanxstate ;cd ../" |& tee ~/Junk/log
cat filelist.txt | parallel -j5 "echo ; echo {}; echo ===; cd {}; make xstate ;cd ../" |& tee ~/Junk/log

### Run krun
cat filelist.txt | parallel -j5 "echo ; echo {}; echo ===; cd {}; make cleankstate ;cd ../" |& tee ~/Junk/log
cat filelist.txt | parallel -j5 "echo ; echo {}; echo ===; cd {}; make kstate ;cd ../" |& tee ~/Junk/log

### Compare
cat filelist.txt | parallel -j15 "echo ; echo {}; echo ===; cd {}; make compare ;cd ../" |& tee ~/Junk/log
