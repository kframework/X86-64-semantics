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
	$(Mkdir)
	${RUN_SH} --file $< --run --output ${OUTDIR}/$@

%.xstate: %.s
	@echo ""
	@echo  "Generate: ${OUTDIR}/$@ "
	$(Mkdir)
	touch  ${OUTDIR}/$@

%.cstate: ${OUTDIR}/%.kstate ${OUTDIR}/%.xstate
	@echo  "Compare: ${OUTDIR}/$@ "

allclean:
	@echo "All Cleaning"
	@rm -rf ${OUTDIR}

cleankstate: 
	@echo "K Cleaning"
	@rm -rf ${OUTDIR}/*.kstate

cleanxstate: 
	@echo "X Cleaning"
	@rm -rf ${OUTDIR}/*.xstate
