# Run
```
../../scripts/run.pl --file bin/20000113-1-0.asm --krun --output Output/20000113-1-0.kstate --nopathsplit
../../scripts/run.pl --file bin/20000113-1-0.asm --xrun --output Output/20000113-1-0.kstate --nopathsplit
../../scripts/run.pl --file bin/20000113-1-0.asm --compare |& tee Output/20000113-1-0.compare.log

OR

cat bin_worklist.txt | parallel "../../scripts/run.pl --file bin/{}.asm --krun --output Output/{}.kstate --nopathsplit" |& tee runlog.txt
cat bin_worklist.txt | parallel "../../scripts/run.pl --file bin/{}.asm --xrun --output Output/{}.xstate --nopathsplit" |& tee runlog.txt
cat bin_worklist.txt | parallel "../../scripts/run.pl --file bin/{}.asm --compare |& tee Output/{}.compare.log" |& tee runlog.txt
```

# Modify source
```
cat src_worklist.txt  | parallel  "sed -i '1 i\#include \"mini_stdlib.h\"' src/{}.c" 
cat src_worklist.txt  | parallel  "sed -i '1 i\#include \"mini_string.h\"' src/{}.c" 


cat src_worklist.txt  | parallel  "sed -i '1d' src/{}.c"
cat src_worklist.txt  | parallel  "sed -i '1d' src/{}.c"
```

# Generate Binaries
```
source cmd_worklist.txt
cat bin_worklist.txt | parallel "../scripts/remove_directives.pl --file bin/{}.asm > bin/{}.tmp; mv bin/{}.tmp bin/{}.asm"
```

