ALL: 01_about/presentation.html

OStype := $(shell uname -s)

ifeq ($(OStype), Linux)
	   view = evince
endif

ifeq ($(OStype), Darwin)
	   view = open
endif

%.pdf: %.tex
	cd $(@D); if [[ $< == *notes.tex ]]; then xelatex $(<F); fi
	$(view) $@

%.pdf: %.Rmd
	if [[ $< == *notes* ]]; then Rscript -e 'rmarkdown::render("$<", output_format = "bookdown::pdf_document2")'; fi
	$(view) $@

%.html: %.Rmd
	if [[ $< == *presentation* ]] ; then Rscript -e 'rmarkdown::render("$<")'; fi
			
clean:
	rm -fv */*.aux */*.log */*.toc */*.blg */*.bbl */*.synctex.gz
	rm -fv */*.nav */*.aux */*.snm 
	rm -fv */*.out */*.bcf */*blx.bib */*.run.xml
	rm -fv */*.fdb_latexmk */*.fls
