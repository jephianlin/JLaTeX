#!/bin/bash
pdflatex active-CV.tex; bibtex active-CV.1.aux; bibtex active-CV.2.aux; bibtex active-CV.3.aux; bibtex active-CV.4.aux; bibtex active-CV.5.aux; bibtex active-CV.6.aux; bibtex active-CV.7.aux; pdflatex -synctex=1 -interact=nonstopmode 'active-CV.tex'
