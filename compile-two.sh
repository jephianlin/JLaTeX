#!/bin/bash

FILENAME="${1##*/}"
BASENAME="${FILENAME%.*}"

head -n 3 $FILENAME > $BASENAME-A.tex
tail -n +7 $FILENAME >> $BASENAME-A.tex

head -n 6 $FILENAME > $BASENAME-B.tex
tail -n +10 $FILENAME >> $BASENAME-B.tex

pdflatex $BASENAME-A.tex

pdflatex $BASENAME-B.tex
