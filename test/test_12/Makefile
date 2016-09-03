PROG_PREFIX=test_12

ENTRY_FUNC=foo
ASM_FILE=c
FUNC_MAP=map.txt

include ../utils/Makefile.tests

.PHONY:run
run:
	${LLC} 	-march=x86-64 -filetype=obj -o ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o ${outdir}${PROG_PREFIX}.${ext}.trans.bc
	${CC} -m64 -I${DIR} -o ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.exe driver_64.c ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o
	@echo "driver5" > /tmp/demo5_foo.txt
	@-./${outdir}${PROG_PREFIX}.${ext}.trans.lifted.exe > ${outdir}after.trans.out	
	@-./${outdir}${PROG_PREFIX}.${ext}.lifted.exe > ${outdir}before.trans.out	

	@if diff ${outdir}before.trans.out  ${outdir}after.trans.out  > /dev/null; then \
		echo "  ${PROG_PREFIX}: Output Passed"; \
		rm -rf ${outdir}*.exe ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.lifted.o ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.opt.bc ; rm -rf ${outdir}${PROG_PREFIX}.${ext}.trans.bc ${outdir}after.trans.out ; \
	else \
		echo "  ${PROG_PREFIX}: Output Failed"; \
	fi 
