PROG_PREFIX=test_12

ENTRY_FUNC=foo
ASM_FILE=c
FUNC_MAP=map.txt

include ../utils/Makefile.tests

CC=clang
CXX=clang++
DIR="${HOME}/Github/mcsema"

.PHONY:run
run: 
	@${CC} -m64 -I${DIR} -o ${PROG_PREFIX}.exe driver_64.c ${PROG_PREFIX}_lifted.o
	@./${PROG_PREFIX}.exe	> out 
	@echo "driver5" > /tmp/demo5_foo.txt
	@./${PROG_PREFIX}.exe >> out	
	@rm -rf /tmp/demo5_foo.txt
	@-if diff out output.gold > /dev/null; then \
	 echo "${PROG_PREFIX}: Output Pass"; \
	else \
	 echo "${PROG_PREFIX}: Output Fail"; \
	fi

