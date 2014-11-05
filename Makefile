
theego.pdf: theego.tex
	pdflatex $<

clean:
	rm -f *.pdf *~ *.log *.aux *.dvi *.toc

