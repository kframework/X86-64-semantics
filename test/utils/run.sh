#!/bin/bash


DIR="${HOME}/Github/mcsema"
LLVM_PATH="${DIR}/build/llvm-3.5/bin/"
STD_DEFS="${DIR}/mc-sema/std_defs/std_defs.txt"
CC=clang
CXX=clang++
#CC_OPTIONS=-fomit-frame-pointer
CC_OPTIONS=
LLC=llc
ext=${COMPILER}
outdir="Output/"


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
  nasm -f elf64 -o ${outdir}${BIN}.${ext}.o ${BIN}.asm ; 
else
  ${COMPILER} -O0 ${CC_OPTIONS}  ${SOURCEFILE} ${GCC_ARCH}  -c   -o ${outdir}${BIN}.${ext}.o  
fi

objdump -d ${outdir}${BIN}.${ext}.o &> ${outdir}${BIN}.${ext}.objdump

${BIN_DESCEND_PATH}/bin_descend  ${BIN_ARCH} -d -i=${outdir}${BIN}.${ext}.o -func-map=${FUNC_MAP}  -entry-symbol=${ENTRY_FUNC} &> /tmp/bd.log  

${CFG_TO_BC_PATH}/cfg_to_bc -ignore-unsupported ${CFGBC_ARCH}  -i ${outdir}${BIN}.${ext}.cfg  -o ${outdir}${BIN}.${ext}.bc  -driver=mcsema_main,${ENTRY_FUNC},raw,return,C &> /tmp/cfgbc.log

${LLVM_PATH}/opt -O3    ${outdir}${BIN}.${ext}.bc  -o=${outdir}${BIN}.${ext}.opt.bc 
${LLVM_PATH}/llvm-dis   ${outdir}${BIN}.${ext}.opt.bc -o=${outdir}${BIN}.${ext}.opt.ll
${LLVM_PATH}/llvm-dis   ${outdir}${BIN}.${ext}.bc -o=${outdir}${BIN}.${ext}.ll

${LLC} 	-march=x86-64 -filetype=obj -o ${outdir}${BIN}.${ext}.lifted.o ${outdir}${BIN}.${ext}.opt.bc
${CC} -m64 -I${DIR} -o ${outdir}${BIN}.${ext}.lifted.exe driver_64.c ${outdir}${BIN}.${ext}.lifted.o

# Clean Up
rm -rf  ${outdir}${BIN}.${ext}.bc  ${outdir}${BIN}.${ext}.cfg  ${outdir}${BIN}.${ext}.lifted.o ${outdir}${BIN}.${ext}.bc ${outdir}${BIN}.${ext}.opt.bc ${outdir}${BIN}.${ext}.o 

opt -load=${HOME}/Github/llvm-slicer/Release+Asserts/lib/LLVMSlicer.so -srcline-mapping -mapping-output=${outdir}${BIN}.srcmap.txt ${outdir}${BIN}.${ext}.ll -o /tmp/xxx ;
