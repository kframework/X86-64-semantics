TGT=proposal
DEPS= 

LATEX=latex
BIBTEX=bibtex

all: $(TGT)
pdf: $(TGT).pdf

$(TGT): $(TGT).pdf

$(TGT).pdf: $(TGT).ps
	ps2pdf $(TGT).ps $(TGT).pdf

$(TGT).ps: $(TGT).dvi
	dvips -o $(TGT).ps $(TGT)

$(TGT).dvi: $(TGT).tex $(DEPS)
	$(LATEX) $(TGT) && $(LATEX) $(TGT)
	$(LATEX) $(TGT)

.PHONY: clean clobber fresh
clean: 
	-$(RM) -f $(TGT).dvi $(TGT).aux $(TGT).log
	-$(RM) -f $(TGT).toc $(TGT).idx $(TGT).bbl
	-$(RM) -f $(TGT).toc $(TGT).ind $(TGT).blg 
	-$(RM) -f $(TGT).ps $(TGT).ind $(TGT).pdf
	-$(RM) -f $(TGT).snm $(TGT).out $(TGT).nav 
	-$(RM) -f missfont.log *~

clobber: clean
	-$(RM) -f $(TGT).ps $(TGT).pdf

fresh: clobber all
