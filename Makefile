
TEXS = $(wildcard *.tex)

theego.pdf: $(TEXS)
	pdflatex theego.tex

clean:
	rm -f *.pdf *~ *.log *.aux *.dvi *.toc

