all: vita.pdf 
	/bin/cp ./vita.pdf $(HOME)/MYWEBPAGE/henricasanova.github.io/

vita.ps: vita.dvi
	dvips vita.dvi -o vita.ps

vita.pdf: vita.tex publications.tex
	pdflatex vita.tex

vita.dvi: vita.tex publications.tex
	latex vita.tex

clean:
	/bin/rm -f vita.dvi vita.ps vita.pdf vita.html vita.aux vita.log vita.dvi
	/bin/rm -rf vita/
