#!/bin/bash

# Clean bibtex files
# 
# Mendeley Bibtex formats are not standard at times
# Issues are primarily from Mendeley having poor latex escaping
# Cleans individual bibliography files for errors
# Needs to be made executable with `chmod +x clean_bib.sh` from terminal
#
# Author: Anish S. Shah, MD | MS

# Software fix
sed -i '' 's/computer_program/manual/g' *.bib;

# Book sections
sed -i '' 's/book_section/inbook/g' *.bib;

# Articles
sed -i '' 's/newspaper_article/article/g' *.bib;
sed -i '' 's/magazine_article/article/g' *.bib;

# Websites
sed -i '' 's/web_page/techreport/g' *.bib;
