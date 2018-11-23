#!/bin/bash/

for f in ./*.pdf
do
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=$f.2.pdf $f ;
done
