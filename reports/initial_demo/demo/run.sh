DIR="/home/sdasgup3/Projects/mcsema"
LLVM_PATH="${DIR}/build/llvm-3.5/bin/"


## Generate Binary
clang  maze.c -m32  -o maze  

## Binary --> CFG
${DIR}/build/mc-sema/bin_descend/bin_descend -march=x86 -d -i=maze -func-map=map.txt  -entry-symbol=main &> /dev/null
## CFG --> LLVM IR
${DIR}/build/mc-sema/bitcode_from_cfg/cfg_to_bc  -mtriple=i686-pc-linux-gnu -i maze.cfg  -o maze.bc  -driver=mcsema_main,main,raw,return,C &> /dev/null


## LLVM IR --> OPT LLVM IR
${LLVM_PATH}/opt  -O3 -o=maze_opt.bc maze.bc

${LLVM_PATH}/llvm-dis  -o=maze.ll maze.bc
${LLVM_PATH}/llvm-dis  -o=maze_opt.ll maze_opt.bc

## Rewrite executable
${LLVM_PATH}/llc -march=x86 -filetype=obj -o maze.o maze_opt.bc
clang -g3  -m32 -I${DIR} maze.o maze_driver_32.c -o maze.lifted  
  
## Run the recovered executable
echo "ssssddddwwa" | ./maze.lifted

## clean up
rm -f *.cfg  *.o *.exe *.ll *.bc *.lifted *.objdump *.log maze
