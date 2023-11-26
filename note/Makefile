f := differential_equation

c:
	platex $(f).tex && dvipdfmx $(f).dvi && open $(f).pdf
	rm -f *.aux *.dvi *.log *.out
	cd components && rm -f *.aux