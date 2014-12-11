
target: theego.pdf

#TEXS = $(wildcard *.tex)

#theego.pdf: $(TEXS)
#	pdflatex theego.tex

%.pdf: %.ps
	ps2pdf13 -dEmbedAllFonts=true -dSubsetFonts=false $<

%.ps: %.dvi
#	dvips -t sixbynine -Ppdf -G0 $<
	dvips -Ppdf -G0 $<

%.dvi: %.tex
	latex $<

theego.dvi: p[0-9]*.tex

clean:
	rm -f -- *.pdf *~ *.log *.aux *.dvi *.toc *.ps

