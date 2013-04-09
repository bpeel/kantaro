# find all of the lilypond files, and make targets for them
LY=$(wildcard lilypond/*.ly)
LY_PDF=$(patsubst lilypond/%.ly,pdf/%.pdf,$(LY))

# find all of the TeX files, and make targets for them
TEX=$(wildcard *.tex)
TEX_PDF=$(patsubst %.tex,pdf/%.pdf,$(TEX))

# default rule: make all TeX and lilypond files
# NB. you can't have TeX and lilypond files with the same basename
all: $(TEX_PDF) $(LY_PDF)

# rule to make the tex_out files
tex_out/%.pdf: %.tex kantoj.sbd kantoj/*.tex
	pdflatex -output-directory=tex_out $<

# rule to put TeX output PDFs in the right place
pdf/%.pdf: tex_out/%.pdf
	cp $< $@

# rule to make lilypond PDFs
pdf/%.pdf: lilypond/%.ly
	lilypond -o pdf --pdf $<

# clean up
clean:
	rm pdf/* tex_out/*
