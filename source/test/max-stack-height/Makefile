.PHONY: all

TESTS=$(shell find . -type d -name "test_*" | sort -V)

all: test

test:
	@for test in ${TESTS}; do \
		make -C $${test} test; \
	done

.PHONY: clean
clean:
	@for test in ${TESTS}; do \
		make -C $${test} clean; \
	done
