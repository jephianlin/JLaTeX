#!/bin/bash
pdflatex active-CV-short.tex; bibtex active-CV-short.1.aux; bibtex active-CV-short.2.aux; bibtex active-CV-short.3.aux; bibtex active-CV-short.4.aux; bibtex active-CV-short.5.aux; pdflatex -synctex=1 -interact=nonstopmode 'active-CV-short.tex'
