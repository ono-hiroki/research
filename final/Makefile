f := final

c:
	platex $(f).tex && dvipdfmx $(f).dvi && platex $(f).tex && dvipdfmx $(f).dvi && open $(f).pdf
	rm -f *.aux *.dvi *.log *.out
	find components -name '*.aux' -type f -delete
