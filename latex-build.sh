#!/bin/sh

set -o pipefail

docker pull texlive/texlive:latest

docker run --rm -it -v $(pwd):/workdir texlive/texlive latexmk -pdf -silent -auxdir=aux -outdir=out $@
