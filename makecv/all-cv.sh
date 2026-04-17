#!/bin/bash

head -n 3 active-CV.tex > active-CV-long.tex
tail -n +7 active-CV.tex >> active-CV-long.tex

head -n 6 active-CV.tex > active-CV-short.tex
tail -n +10 active-CV.tex >> active-CV-short.tex

pdflatex active-CV-long.tex; bibtex active-CV-long.1.aux; bibtex active-CV-long.2.aux; bibtex active-CV-long.3.aux; bibtex active-CV-long.4.aux; bibtex active-CV-long.5.aux; bibtex active-CV-long.6.aux; bibtex active-CV-long.7.aux; pdflatex -synctex=1 -interact=nonstopmode 'active-CV-long.tex'

pdflatex active-CV-short.tex; bibtex active-CV-short.1.aux; bibtex active-CV-short.2.aux; bibtex active-CV-short.3.aux; bibtex active-CV-short.4.aux; bibtex active-CV-short.5.aux; bibtex active-CV-short.6.aux; bibtex active-CV-short.7.aux; pdflatex -synctex=1 -interact=nonstopmode 'active-CV-short.tex'

for i in {1..7}
do
    cp active-CV-long.$i.aux active-CV.$i.aux
done
