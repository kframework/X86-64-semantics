PROG_PREFIX=test_1

ENTRY_FUNC=main
ASM_FILE=c
FUNC_MAP=${HOME}/Github/mcsema/mc-sema/std_defs/std_defs.txt
LLC=$(shell which llc)

include ../utils/Makefile.tests

CC=clang
CXX=clang++
DIR="${HOME}/Github/mcsema"
outdir="Output/"

.PHONY:run
run:
	${LLC} 	-march=x86-64 -filetype=obj -o ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o ${outdir}${PROG_PREFIX}.${ext}.trans.bc
	${CC} -m64 -I${DIR} -o ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.exe driver_64.c ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o
	@-./${outdir}${PROG_PREFIX}.${ext}.trans.lifted.exe > ${outdir}after.trans.out	

	@if diff ${outdir}before.trans.out  ${outdir}after.trans.out  > /dev/null; then \
		echo "  ${PROG_PREFIX}: Output Passed"; \
		rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.exe ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.opt.bc ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.bc ${outdir}after.trans.out ; \
	else \
		echo "  ${PROG_PREFIX}: Output Failed"; \
	fi 
