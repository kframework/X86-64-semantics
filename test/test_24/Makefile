PROG_PREFIX=test_24

ENTRY_FUNC=keycomp	
ASM_FILE=c
#FUNC_MAP=${HOME}/Github/mcsema/mc-sema/std_defs/std_defs.txt
FUNC_MAP=map.txt

include ../utils/Makefile.tests

CC=clang
CXX=clang++
DIR="${HOME}/Github/mcsema"

.PHONY:  run
run: 
	@${CC} -m64 -I${DIR} -o ${PROG_PREFIX}.exe driver_64.c ${PROG_PREFIX}_lifted.o
	@./${PROG_PREFIX}.exe "key{d9dd1cb9dc13ebc3dc3780d76123ee34}"	> out 
	@-if diff out output.gold > /dev/null; then \
	 echo "${PROG_PREFIX}: Output Pass"; \
	else \
	 echo "${PROG_PREFIX}: Output Fail"; \
	fi
