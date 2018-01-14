#! /bin/bash

src="src/main/tex"
export TEXINPUTS="$(pwd)/${src}//:"

for d in $(ls "${src}"); do
    mkdir -p "target/${d}"
done

pdflatex -output-directory target "${src}/MAIN.tex"