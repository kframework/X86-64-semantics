PAPER = main

TEX = $(wildcard *.tex)

BIB = bibs/references.bib \
      bibs/modeling-X86-semantics.bib

FIGS = $(wildcard figures/*.png)

.PHONY: all clean

$(PAPER).pdf: $(TEX) $(BIB) $(FIGS) styles/jpaper.cls
	echo $(FIGS)
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out 

