DEFAULT:
	pdflatex beamer.tex
	pdflatex report.tex	

all:
	pdflatex beamer.tex
	bibtex beamer.aux
	pdflatex beamer.tex
	pdflatex beamer.tex
	pdflatex report.tex
	bibtex report.aux
	pdflatex report.tex
	pdflatex report.tex

clean:
	rm *.aux
	rm *.log
	rm *.out
	rm *.bbl
	rm *.blg
	rm *.pdf
