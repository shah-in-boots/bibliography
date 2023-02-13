#!/bin/bash

# Clean bibtex files
# 
# Mendeley Bibtex formats are not standard at times
# Issues are primarily from Mendeley having poor latex escaping
# Cleans individual bibliography files for errors
# Needs to be made executable with `chmod +x clean_bib.sh` from terminal
#
# Author: Anish S. Shah, MD | MS

sed -i "s/computer_program/manual/g" *.bib
