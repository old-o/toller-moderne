#! /bin/bash

rm -rf target
cp -r src/main/tex target
cd target

pdflatex MAIN.tex

mv MAIN.pdf ../toller-moderne.pdf


