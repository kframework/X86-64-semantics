#!/bin/bash


DIR="${HOME}/Github/mcsema"
LLVM_PATH="${DIR}/build/llvm-3.5/bin/"
STD_DEFS="${DIR}/mc-sema/std_defs/std_defs.txt"
CC=clang
CXX=clang++


C=$(which gcc)
BIN="$1"
ARCH="$2"

BIN_DESCEND_PATH="${DIR}/build/mc-sema/bin_descend"
FUNC_MAP="${DIR}/mc-sema/std_defs/std_defs.txt"
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


rm -f *.cfg  *.o *.exe *.ll *.bc *.lifted *.objdump *.log 

${CC}  ${SOURCEFILE} ${GCC_ARCH}    -o ${BIN}.o  
objdump -d ${BIN} &> ${BIN}.objdump

${BIN_DESCEND_PATH}/bin_descend ${BIN_ARCH} -d -i=${BIN}.o -func-map=${FUNC_MAP}  -entry-symbol=main &> bd.log  

${CFG_TO_BC_PATH}/cfg_to_bc ${CFGBC_ARCH}  -i ${BIN}.cfg  -o ${BIN}.bc  -driver=mcsema_main,main,raw,return,C &> cfgbc.log

${LLVM_PATH}/opt -O3    -o=${BIN}_opt.bc ${BIN}.bc
${LLVM_PATH}/llvm-dis   -o=${BIN}.ll ${BIN}.bc
${LLVM_PATH}/llvm-dis   -o=${BIN}_opt.ll ${BIN}_opt.bc

opt -load=${HOME}/Github/llvm-slicer/Release+Asserts/lib/LLVMSlicer.so -srcline-mapping -mapping-output=mapping.txt ${BIN}.ll -o /tmp/xxx
