TESTS=$(shell find . -type d -name "test_*" | sort -V)
.PHONY:	${TESTS}  all clean

all: ${TESTS}

${TESTS}:
	make -C $@

clean:
	@for test in ${TESTS}; do \
		make -C $${test} clean; \
	done
