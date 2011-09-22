#!/bin/bash

# This script converts a MS Word .doc to epub
# abiword and calibre (ebook-convert) must be installed in the system

filein="$1"
fileinname=${filein%.*}
fileout="${fileinname}.epub"

abiword --to=html "$filein"
ebook-convert "${fileinname}.html" "$fileout"
rm "${fileinname}.html"
