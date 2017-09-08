#!/bin/bash
set -e
git config --global user.email "m.robinson@ic.ac.uk"
git config --global user.name "MERobinson"
git clone --branch=gh-pages \
  https://github.com/MERobinson/MERobinson.github.io
cd book-output
git pull --no-edit origin master
Rscript _generate-gh-pages.R
git add *
git commit -m "Update the book"
git push
