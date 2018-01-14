#! /bin/bash

src="src/main/tex"
export TEXINPUTS="$TRAVIS_BUILD_DIR/${src}//:"

for d in $(ls "${src}"); do
    mkdir -p "target/${d}"
done

pdflatex -output-directory target "${src}/MAIN.tex"