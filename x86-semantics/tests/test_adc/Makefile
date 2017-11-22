TESTS=$(shell find . -maxdepth 1   -name "*.s" | sort -V)

OUTDIR=Output
KSTATES=$(patsubst %.s, %.kstate, $(TESTS))
XSTATES=$(patsubst %.s, %.xstate, $(TESTS))
CSTATES=$(patsubst %.s, %.cstate, $(TESTS))

Mkdir=@mkdir -p $(@D)
RUN_SH=../../scripts/run.pl


.PHONY:	${TESTS}  all allclean xstate kstate compare cleanxstate cleankstate

all:	kstate xstate compare

kstate: ${KSTATES}
xstate: ${XSTATES}
compare:${CSTATES}

%.kstate: %.s
	@echo ""
	@echo  "Generate: ${OUTDIR}/$@ "
	@mkdir -p ${OUTDIR}
	${RUN_SH} --file $< --krun --output ${OUTDIR}/$@

%.xstate: %.s
	@echo ""
	@echo  "Generate: ${OUTDIR}/$@ "
	@mkdir -p ${OUTDIR}
	${RUN_SH} --file $< --xrun --output ${OUTDIR}/$@

%.cstate: ${OUTDIR}/%.kstate ${OUTDIR}/%.xstate
	@echo ""
	@echo  "Compare: ${OUTDIR}/$@ "
	${RUN_SH} --file $< --compare 

allclean:
	@echo "All Cleaning"
	rm -rf ${OUTDIR}

cleankstate:
	@echo "K Cleaning"
	@rm -rf ${OUTDIR}/*.kstate

cleanxstate:
	@echo "X Cleaning"
	@rm -rf ${OUTDIR}/*.xstate
