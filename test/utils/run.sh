#!/bin/bash


MCSEMA_HOME="${HOME}/Github/mcsema"
CC=clang
CXX=clang++
OPT=opt
LLVMDIS=llvm-dis
LLVMAS35="${HOME}/Install/llvm-3.5.0.release.install/bin/llvm-as"
#llvm-as
LLC=llc
#CC_OPTIONS=-fomit-frame-pointer
CC_OPTIONS=
ext=${COMPILER}
outdir="Output/"


C=$(which gcc)
BIN="$1"
ARCH="$2"

BIN_DESCEND_PATH="${MCSEMA_HOME}/build/mc-sema/bin_descend"
CFG_TO_BC_PATH="${MCSEMA_HOME}/build/mc-sema/bitcode_from_cfg/"
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

if [ ${SKIP_MCSEMA} == "0" ] 
then  
  if [ ${ASM_FILE} == "asm" ] ; then
    nasm -f elf64 -o ${outdir}${BIN}.${ext}.o ${BIN}.asm ; 
  else
    ${COMPILER} -O0 ${CC_OPTIONS}  ${SOURCEFILE} ${GCC_ARCH}  -c   -o ${outdir}${BIN}.${ext}.o  
  fi

  objdump -d ${outdir}${BIN}.${ext}.o &> ${outdir}${BIN}.${ext}.objdump

  ${BIN_DESCEND_PATH}/bin_descend  ${BIN_ARCH} -d -i=${outdir}${BIN}.${ext}.o -func-map=${FUNC_MAP}  -entry-symbol=${ENTRY_FUNC} &> /tmp/bd.log  

  ${CFG_TO_BC_PATH}/cfg_to_bc -ignore-unsupported ${CFGBC_ARCH}  -i ${outdir}${BIN}.${ext}.cfg  -o ${outdir}${BIN}.${ext}.bc  -driver=mcsema_main,${ENTRY_FUNC},raw,return,C &> /tmp/cfgbc.log

  ${OPT} -O3    ${outdir}${BIN}.${ext}.bc  -o=${outdir}${BIN}.${ext}.opt.bc 
  ${LLVMDIS}   ${outdir}${BIN}.${ext}.opt.bc -o=${outdir}${BIN}.${ext}.opt.ll
  ${LLVMDIS}   ${outdir}${BIN}.${ext}.bc -o=${outdir}${BIN}.${ext}.ll
else
  ${LLVMAS35} ${outdir}${BIN}.${ext}.ll -o ${outdir}${BIN}.${ext}.bc
  ${LLVMAS35} ${outdir}${BIN}.${ext}.opt.ll -o ${outdir}${BIN}.${ext}.opt.bc
fi

${LLC} 	-march=x86-64 -filetype=obj -o ${outdir}${BIN}.${ext}.lifted.o ${outdir}${BIN}.${ext}.opt.bc
${CC} -m64 -I${INCLUDE_DIR} -o ${outdir}${BIN}.${ext}.lifted.exe driver_64.c ${outdir}${BIN}.${ext}.lifted.o

# Clean Up
rm -rf  ${outdir}${BIN}.${ext}.cfg  ${outdir}${BIN}.${ext}.lifted.o  ${outdir}${BIN}.${ext}.o 

#opt -load=${HOME}/Github/llvm-slicer/Release+Asserts/lib/LLVMSlicer.so -srcline-mapping -mapping-output=${outdir}${BIN}.srcmap.txt ${outdir}${BIN}.${ext}.ll -o /tmp/xxx ;
