%.pdf: %.ps
	ps2pdf $<
%.ps: %.dvi
	dvips -P pdf $<
%.dvi: %.tex
	latex $<
clean:
	$(RM) *.aux *.log *.pdf
