TESTS=decompilation
.PHONY:	${TESTS}  all clean gcc clang
SUB_TARGET=all

all: ${TESTS}


${TESTS}:
	@${MAKE} -C $@ ${SUB_TARGET}

clang:	SUB_TARGET=clang
clang:	all

gcc: SUB_TARGET=gcc
gcc: all
	
clean:
	@for test in ${TESTS}; do \
		make -C $${test} clean; \
	done
