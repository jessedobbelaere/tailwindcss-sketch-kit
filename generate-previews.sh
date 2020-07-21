#!/bin/sh

mkdir -p images/
rm -rf images/*

# Extract our Sketch file preview.png
unzip -p Tailwind\ CSS.sketch previews/preview.png > images/preview.png

# Generate artboard previews based on our pdf
convert -density 300 Tailwind\ CSS.pdf -resize 25% images/artboard-preview-%d.png
