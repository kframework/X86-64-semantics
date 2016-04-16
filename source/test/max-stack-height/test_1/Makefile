PROG_PREFIX=test_1

OPT=$(shell which opt)
RUN_SH=../utils/run.sh  
ENTRY_POINT=main
loadso=${HOME}/Github/binary-decompilation/source/Release+Asserts/lib/LLVMmax_stack_height.so 

all:	test



test: 
	${RUN_SH} ${PROG_PREFIX} 64 	${ENTRY_POINT} 
	${OPT} -load=${loadso} -ssh  -debug ${PROG_PREFIX}.ll  -o /dev/null &>  log
	sed -e '/Args:/,/Subtarget features:/d' log > log.mod	
	sed -e '/Args:/,/Subtarget features:/d'  ${PROG_PREFIX}.gold >  ${PROG_PREFIX}.mod
	diff -q log.mod  ${PROG_PREFIX}.mod

	for file in `ls *.dot` ; do \
	  gold=$$(echo $$file | sed 's/dot/gold/g') ; \
	  echo Diff $$gold  $$file  ; \
	  diff -q  $$gold $$file; \
	  echo;\
	done  

clean:
	../utils/clearall.sh
	rm -rf log *.dot *.mod

.PHONY: clean run
