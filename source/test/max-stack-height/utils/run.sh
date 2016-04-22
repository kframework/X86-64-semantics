#!/bin/bash


DIR="${HOME}/Github/mcsema"
LLVM_PATH="${DIR}/build/llvm-3.5/bin/"
STD_DEFS="${DIR}/mc-sema/std_defs/std_defs.txt"
CC=clang
CXX=clang++
#CC_OPTIONS=-fomit-frame-pointer
CC_OPTIONS=


C=$(which gcc)
BIN="$1"
ARCH="$2"

BIN_DESCEND_PATH="${DIR}/build/mc-sema/bin_descend"
CFG_TO_BC_PATH="${DIR}/build/mc-sema/bitcode_from_cfg/"
SOURCEFILE="${BIN}.c"

GCC_ARCH=""
BIN_ARCH=""
CFGBC_ARCH=""

if [ ${ARCH} == "32"  ]
then
  GCC_ARCH="-m32"
  BIN_ARCH="-march=x86"
  CFGBC_ARCH="-mtriple=i686-pc-linux-gnu"
else
  GCC_ARCH="-m64"
  BIN_ARCH="-march=x86-64"
  CFGBC_ARCH="-mtriple=x86_64-pc-linux-gnu"
fi

if [ ${ASM_FILE} == "asm" ] ; then
  nasm -f elf64 -o ${BIN}.o ${BIN}.asm ; 
else
  ${COMPILER} -O0 ${CC_OPTIONS}  ${SOURCEFILE} ${GCC_ARCH}  -c   -o ${BIN}.o  
fi

objdump -d ${BIN}.o &> ${BIN}.objdump

${BIN_DESCEND_PATH}/bin_descend ${BIN_ARCH} -d -i=${BIN}.o -func-map=${FUNC_MAP}  -entry-symbol=${ENTRY_FUNC} &> bd.log  

${CFG_TO_BC_PATH}/cfg_to_bc ${CFGBC_ARCH}  -i ${BIN}.cfg  -o ${BIN}.bc  -driver=mcsema_main,${ENTRY_FUNC},raw,return,C &> cfgbc.log

${LLVM_PATH}/opt -O3    -o=${BIN}_opt.bc ${BIN}.bc
${LLVM_PATH}/llvm-dis   -o=${BIN}.ll ${BIN}.bc
${LLVM_PATH}/llvm-dis   -o=${BIN}_opt.ll ${BIN}_opt.bc
${LLVM_PATH}/llc -march=x86-64 -filetype=obj -o ${BIN}_lifted.o ${BIN}_opt.bc


opt -load=${HOME}/Github/llvm-slicer/Release+Asserts/lib/LLVMSlicer.so -srcline-mapping -mapping-output=mapping.txt ${BIN}.ll -o /tmp/xxx ;
