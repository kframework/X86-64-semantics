TESTS=$(shell find . -maxdepth 1  -type d -name "test_*" | sort -V)
.PHONY:	${TESTS}  all clean gcc clang
SUB_TARGET=all

all: ${TESTS}


${TESTS}:
	@${MAKE} -C $@ ${SUB_TARGET}

clang:	SUB_TARGET=clang
clang:	all

gcc: SUB_TARGET=gcc
gcc: all
	
cfg:
	@for test in ${TESTS}; do \
		make -C $${test} cfg; \
	done
clean:
	@for test in ${TESTS}; do \
		make -C $${test} clean; \
	done
