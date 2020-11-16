
SLIDES = count_matrix_comparison.slides.html \
	 compare-rsem-kallisto-spike-performance.slides.html \
         compare-10x-sum-vs-population.slides.html \
         compare-c1-sum-vs-population.slides.html \
         compare-single-cell.slides.html

PDFS = 	 compare-rsem-kallisto-spike-performance.pdf \
         compare-10x-sum-vs-population.pdf \
         compare-c1-sum-vs-population.pdf


NOTEBOOKS = build-e10.5-population-fastqs.html \
            build-c1-e10.5-population-looms.html \
            build-10x-e10.5-population-looms.html \
            count_matrix_comparison.html \
            compare-10x-vs-ENCODE-gtf.html \
	    compare-rsem-kallisto-spike-performance.html \
            compare-10x-sum-vs-population.html \
            compare-c1-sum-vs-population.html \
            compare-single-cell.html \
            compare-single-cell-minimal.html \
            generate-c1-pseudo-minimal-runs.html

ORG = README.html

all: $(SLIDES) $(NOTEBOOKS) $(PDFS) $(ORG)

%.slides.html:%.ipynb Makefile
	jupyter nbconvert --to slides $<

%.html:%.ipynb Makefile
	jupyter nbconvert --to html $<

%.pdf:%.ipynb Makefile
	jupyter nbconvert --to pdf $<

%.html:%.org Makefile
	emacs $< --batch -f org-html-export-to-html --kill

clean:
	rm $(SLIDES) $(NOTEBOOKS) $(PDFS) $(ORG)
