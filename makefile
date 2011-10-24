#Proyecto de servicio social y titulación Makefile
COVERFILE = portada.tex
THESISFILE = tesis.tex
THESISPDF = TitulacionSS.pdf
.PHONY: dvi pdf clean

all:cover thesispdf

thesispdf:
	pdflatex $(THESISFILE) 

clean:
	@rm -f \
	*.aux \
	*.log \
	*.out \
	*.dvi \
	*.pdf \
	*.ps	

cover:
	pdflatex $(COVERFILE) 	
	

