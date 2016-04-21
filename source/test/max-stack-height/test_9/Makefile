PROG_PREFIX=test_9

ENTRY_FUNC=start
ASM_FILE=asm
FUNC_MAP=${HOME}/Github/mcsema/mc-sema/std_defs/std_defs.txt

include ../utils/Makefile.tests

CC=clang
CXX=clang++
DIR="${HOME}/Github/mcsema"

.PHONY:run
run: 
	@${CC} -m64 -I${DIR} -o ${PROG_PREFIX}.exe driver_64.c ${PROG_PREFIX}_lifted.o
	@./${PROG_PREFIX}.exe	
