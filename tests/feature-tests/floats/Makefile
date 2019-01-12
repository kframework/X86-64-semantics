TESTS=$(shell find . -maxdepth 1   -name "*.s" | sort -V)

OUTDIR=Output
KSTATES=$(patsubst %.s, ${OUTDIR}/%.kstate, $(TESTS))
XSTATES=$(patsubst %.s, ${OUTDIR}/%.xstate, $(TESTS))
CSTATES=$(patsubst %.s, %.cstate, $(TESTS))

Mkdir=@mkdir -p $(@D)
RUN_SH=../../../scripts/run.pl

all:	kstate xstate compare

kstate: ${KSTATES}
xstate: ${XSTATES}
compare:${CSTATES}

ARGS=a.out HelloWorld!

${OUTDIR}/%.kstate: %.s
	@echo ""
	@echo  "Generate: $@ "
	@mkdir -p ${OUTDIR}
	${RUN_SH} --file $< --krun --output $@

${OUTDIR}/%.xstate: %.s
	@echo ""
	@echo  "Generate: $@ "
	@mkdir -p ${OUTDIR}
	${RUN_SH} --file $< --xrun --output $@

%.cstate: ${OUTDIR}/%.kstate ${OUTDIR}/%.xstate
	@echo ""
	@echo  "Compare: ${OUTDIR}/$@ "
	${RUN_SH} --file $< --compare 

allclean:
	@echo "All Cleaning"
	rm -rf ${OUTDIR}

clean:
	@echo "Cleaning .exe & .o"
	rm -rf ${OUTDIR}/*.exec
	rm -rf ${OUTDIR}/*.o

cleankstate:
	@echo "K Cleaning"
	rm -rf ${OUTDIR}/*.kstate

cleanxstate:
	@echo "X Cleaning"
	rm -rf ${OUTDIR}/*.xstate

test:
	@echo "T Cleaning"
