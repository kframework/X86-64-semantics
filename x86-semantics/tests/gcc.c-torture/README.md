# Run
```
../../scripts/run.pl --file bin/20000113-1-0.asm --krun --output Output/20000113-1-0.kstate --nopathsplit
../../scripts/run.pl --file bin/20000113-1-0.asm --xrun --output Output/20000113-1-0.kstate --nopathsplit
../../scripts/run.pl --file bin/20000113-1-0.asm --compare |& tee Output/20000113-1-0.compare.log

OR

cat bin_worklist.txt | parallel "../../../scripts/run.pl --file bin/{}.asm --krun --output Output/{}.kstate --nopathsplit" |& tee runlog.txt
cat bin_worklist.txt | parallel "../../../scripts/run.pl --file bin/{}.asm --xrun --output Output/{}.xstate --nopathsplit" |& tee runlog.txt
cat bin_worklist.txt | parallel "../../../scripts/run.pl --file bin/{}.asm --compare |& tee Output/{}.compare.log" |& tee runlog.txt
```

# Modify source (One time)
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

# Remove blacklist instr from test pool
```
cat bin_blacklist.txt  | parallel -j1 "sed -i '/\<{}\>/d' cmd_worklist.txt "
```

# CHeck for a presence of specific pattern
```
cat log | parallel  "echo {}; grep  \"\\.\" bin/{}.asm  | grep -v globl"

cat log | parallel  "grep -l \"shld\\|shrd\\|scas\\|stos\\|cvt\" bin/{}.asm "
cat log | parallel grep -l "_overflow" bin/{}.asm
cat log | parallel  "grep -l  \"fadd\\|fsubp\\|fstpt\\|fmulp\\|fldt\\|fisttpl\\|fchs\" bin/{}.asm  "
cat log | parallel  "grep -l  \"printf\\|putc\\|puts\\|write\" bin/{}.asm"
cat log | parallel  "grep -l  \"comis\" bin/{}.asm"
cat log | parallel  "grep -l  \"__builtin_conjf\" src/{}.c"
```

# Search commands
```
cat log | parallel "grep -w "{}" ../docs/work.build_O0.binary"
```

# Statistics
```
find . -name cmd_worklist.txt | xargs wc -l
   100 ./job_1_100/cmd_worklist.txt
   500 ./job_101_600/cmd_worklist.txt
   867 ./job_601_1465/cmd_worklist.txt
  1467 total

find . -name bin_worklist.txt | xargs wc -l
  100 ./job_1_100/bin_worklist.txt
  500 ./job_101_600/bin_worklist.txt
  867 ./job_601_1465/bin_worklist.txt
 1467 total

find . -name whitelist.txt | xargs wc -l
   74 ./job_1_100/whitelist.txt
  232 ./job_101_600/whitelist.txt
  321 ./job_601_1465/whitelist.txt
  627 total
 
find . -name blacklist.txt | xargs wc -l
   26 ./job_1_100/blacklist.txt
  268 ./job_101_600/blacklist.txt
  546 ./job_601_1465/blacklist.txt
  840 total

total == white + blacklist  
```


Whitelist: 627

Blacklist (1_100 101_600 601_rest)
  - Unsupp instr (shld\\|shrd\\|scas\\|stos\\): 0 + 6 +  14
  - Unsupp syscall:                             0 + 12 + 15 / 25 (revised)
  - x87 :                                       0 + 9 +  12
  - Unsupp instr (cvt|comis):                   4 + 32 + 63
  - prefetch:                                   0 + 0  + 5
  - buitins:                                    0 + 0  + 5
  - gcc seg fault:                              0 + 0  + 1
  - Can be whitelisted:                         22 + 209 + 431


Total support:  627 +  (22 + 209 + 431) + (4 + 32 + 63) == 1388 / 1467                                           

## Total
106 + 58 + 600 + 865
= 1629

## Blacklist criteria
grep -rl "__builtin_\|printf\|overflow\|puts\|putc\|write\|scanf\|prefetch\|\.comm\|\.string\|\.bss" bin/*.asm  | wc

wc ./job_101_600/blacklist.txt ./ieee/blacklist.txt ./builtins/blacklist.txt ./job_601_1465/blacklist.txt ./job_1_100/blacklist.txt




