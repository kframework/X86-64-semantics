PROG_PREFIX=test_1

ENTRY_FUNC=main
ASM_FILE=c
FUNC_MAP=${HOME}/Github/mcsema/mc-sema/std_defs/std_defs.txt

OPT=$(shell which opt)
RUN_SH=../utils/run.sh  
loadso=${HOME}/Github/binary-decompilation/source/Release+Asserts/lib/LLVMmax_stack_height.so 

all:	test

test: 
	@ENTRY_FUNC=${ENTRY_FUNC} ASM_FILE=${ASM_FILE} FUNC_MAP=${FUNC_MAP} ${RUN_SH} ${PROG_PREFIX} 64 	
	@${OPT} -load=${loadso} -ssh  -debug ${PROG_PREFIX}.ll  -o /dev/null 2>  log
	@sed -e '/Args:/,/Subtarget features:/d' log > log.mod	
	@sed -e '/Args:/,/Subtarget features:/d'  ${PROG_PREFIX}.gold >  ${PROG_PREFIX}.mod
	@diff -w -q log.mod  ${PROG_PREFIX}.mod
	@if [ $$? != 0  ]; then \
		echo 	"${PROG_PREFIX} FAILED" ;\
	fi

	@for file in `ls *.dot` ; do \
	  gold=$$(echo $$file | sed 's/dot/gold/g') ; \
	  diff -w -q  $$gold $$file; \
		if [ $$? != 0  ]; then \
			echo 	"${PROG_PREFIX} FAILED" ;\
		fi \
	done  

	@echo "${PROG_PREFIX} Pass"

clean:
	../utils/clearall.sh
	rm -rf log *.dot *.mod

.PHONY: clean run
