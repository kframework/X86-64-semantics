TESTS=$(shell find . -type d -name "test_*" | sort -V)
.PHONY:	${TESTS}  all clean

all: ${TESTS}

${TESTS}:
	${MAKE} -C $@ 

clean:
	@for test in ${TESTS}; do \
		make -C $${test} clean; \
	done
