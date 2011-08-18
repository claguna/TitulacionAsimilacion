#Proyecto de servicio social y titulación Makefile
COVERFILE = portada.tex
THESISFILE = tesis.tex
THESISPDF = TitulacionSS.pdf
.PHONY: dvi pdf clean

all:cover thesispdf concatpdf	

thesispdf:
	pdflatex $(THESISFILE) 

clean:
	@rm -f \
	*.aux \
	*.log \
	*.out \
	*.dvi \
	*.pdfs \
	*.ps	

cover:
	pdflatex $(COVERFILE) 	
	
concatpdf:
	gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=$(THESISPDF)  $(COVERFILE:.tex=.pdf) \
	$(THESISFILE:.tex=.pdf) 
