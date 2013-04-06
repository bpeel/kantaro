all: pdf/kantaro.pdf pdf/ukulelo.pdf

tex_out/%.pdf: %.tex kantoj.sbd kantoj/*.tex
	pdflatex -output-directory=tex_out $<

pdf/%.pdf: tex_out/%.pdf
	cp $< $@

clean:
	rm pdf/* tex_out/*
