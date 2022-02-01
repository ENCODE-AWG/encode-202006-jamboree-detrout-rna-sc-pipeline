
SLIDES = adrenal/ENCSR724KET_16f_nuc/compare-adrenal-10x-encode-annotations_multiread_2.7.9a_2021-06-25.slides.html \
         lung/ENCSR966DDY_16f_nuc/compare-lung-10x-encode-annotations_multiread_2.7.9a_2021-06-25.slides.html \
         count_matrix_comparison.slides.html \
	 compare-rsem-kallisto-spike-performance.slides.html \
         compare-10x-sum-vs-population.slides.html \
         compare-c1-sum-vs-population.slides.html \
         compare-single-cell.slides.html

PDFS = 	 compare-rsem-kallisto-spike-performance.pdf \
         compare-10x-sum-vs-population.pdf \
         compare-c1-sum-vs-population.pdf


NOTEBOOKS = adrenal/ENCSR724KET_16f_nuc/compare-cell-ranger-to-star2.7.1a.html \
            adrenal/ENCSR724KET_16f_nuc/compare-cell-ranger-to-star2.7.9a_2021-06-25-cr_compatibility.html \
            adrenal/ENCSR724KET_16f_nuc/compare-cell-ranger-to-star2.7.9a_2021-06-25-encode+cr.html \
            adrenal/ENCSR724KET_16f_nuc/compare-cell-ranger-to-star2.7.9a_2021-06-25-encode-forward+cr.html \
	    adrenal/ENCSR724KET_16f_nuc/compare-cell-ranger-to-tenxsolo_multi_dev_EoI.html \
	    adrenal/ENCSR724KET_16f_nuc/compare-10x-encode-annotations_2.7.9a_2021-06-25.html \
            adrenal/ENCSR724KET_16f_nuc/compare-adrenal-10x-encode-annotations_multiread_2.7.9a_2021-06-25.html \
            adrenal/ENCSR724KET_16f_nuc/compare-adrenal-16f-10x-v-encode-annotations_eoi_em.html \
            adrenal/ENCSR724KET_16f_nuc/compare-adrenal-16f-10x-v-encode-annotations_eoi_uniq.html \
	    adrenal/ENCSR724KET_16f_nuc/compare-adrenal-16f-10x-v-encode-full-annotations_eoi_uniq.html \
            adrenal/ENCSR362YDM_26m_nuc/compare-adrenal-26m-10x-v-encode-annotations_eoi_uniq.html \
            adrenal/ENCSR362YDM_26m_nuc/compare-adrenal-26m-10x-v-encode-annotations_eoi_em.html \
            lung/ENCSR966DDY_16f_nuc/compare-lung-16f-10x-v-encode-annotations_eoi_uniq.html \
            lung/ENCSR966DDY_16f_nuc/compare-lung-16f-10x-v-encode-annotations_eoi_em.html \
            lung/ENCSR966DDY_16f_nuc/compare-lung-10x-encode-annotations_multiread_2.7.9a_2021-06-25.html \
            SRP199641/SRX5908538_HCC1395_LLU_10x/compare-HCC1395-10x-v-encode-annotations_eoi_uniq.html \
            SRP199641/SRX5908538_HCC1395_LLU_10x/compare-HCC1395-10x-v-encode-annotations_eoi_em.html \
            build-e10.5-population-fastqs.html \
            build-c1-e10.5-population-looms.html \
            build-10x-e10.5-population-looms.html \
	    build-10x-paper-matrix.html \
            count_matrix_comparison.html \
            compare-cell-ranger-barcode-lists.html \
	    compare-corrected-bulk-hff-fragment-length.html \
            compare-dcc-processed-kallisto.html \
            compare-maximum-intersection-correlations-minimal.html \
            compare-10x-e10.5-common-genes.html \
            compare-10x-vs-ENCODE-gtf.html \
            compare-10x-arc-vs-ENCODE-gtf.html \
	    compare-rsem-kallisto-spike-performance.html \
            compare-10x-sum-vs-population.html \
            compare-c1-sum-vs-population.html \
            compare-single-cell.html \
            compare-single-cell-minimal.html \
            compare-kallisto-fragment-and-transcript-length.html \
            generate-c1-pseudo-minimal-runs.html \
            single-cell-to-process.html \
            SRP199641/SRX5908538_HCC1395_LLU_10x/compare-HCC1395-10x-v-encode-annotations_eoi_em.html \
            SRP199641/SRX5908538_HCC1395_LLU_10x/compare-HCC1395-10x-v-encode-annotations_eoi_uniq.html \
            BP_comparison/dataset-algorithm-sample-cell-scatter-plots.html \
	    BP_comparison/intersection-of-pass-filters.html \
            ENCLB129LMS-did-we-get-anywhere-close-split-seq.html \


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
