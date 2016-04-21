PROG_PREFIX=test_13

ENTRY_FUNC=doWork
ASM_FILE=c
FUNC_MAP=map.txt

include ../utils/Makefile.tests

CC=clang
CXX=clang++
DIR="${HOME}/Github/mcsema"

.PHONY:  run
run: 
	@${CC} -m64 -I${DIR} -o ${PROG_PREFIX}.exe driver_64.c ${PROG_PREFIX}_lifted.o
	@./${PROG_PREFIX}.exe	
