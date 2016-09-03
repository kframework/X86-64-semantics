PROG_PREFIX=test_24

ENTRY_FUNC=keycomp	
ASM_FILE=c
#FUNC_MAP=${HOME}/Github/mcsema/mc-sema/std_defs/std_defs.txt
FUNC_MAP=map.txt

include ../utils/Makefile.tests

.PHONY:run
run:
	${LLC} 	-march=x86-64 -filetype=obj -o ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o ${outdir}${PROG_PREFIX}.${ext}.trans.bc
	${CC} -m64 -I${DIR} -o ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.exe driver_64.c ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o
	@-./${outdir}${PROG_PREFIX}.${ext}.trans.lifted.exe "key{d9dd1cb9dc13ebc3dc3780d76123ee34}" > ${outdir}after.trans.out	
	@-./${outdir}${PROG_PREFIX}.${ext}.lifted.exe "key{d9dd1cb9dc13ebc3dc3780d76123ee34}" > ${outdir}before.trans.out	

	@if diff ${outdir}before.trans.out  ${outdir}after.trans.out  > /dev/null; then \
		echo "  ${PROG_PREFIX}: Output Passed"; \
		rm -rf ${outdir}*.exe ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.opt.bc ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.bc ${outdir}after.trans.out ; \
	else \
		echo "  ${PROG_PREFIX}: Output Failed"; \
	fi 
