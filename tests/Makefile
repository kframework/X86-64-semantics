TESTS=$(shell find . -maxdepth 1  -type d -name "test_*" | sort -V)
.PHONY:	${TESTS}  all clean x86states kstates compare allclean cleanxstate cleankstate

all allclean xstate kstate compare cleanxstate cleankstate: ${TESTS}

${TESTS}:
	@${MAKE} -C $@ $(MAKECMDGOALS)

