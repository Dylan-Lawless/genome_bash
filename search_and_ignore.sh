#!/bin/bash/

# This should output files containing a string and ignore file containing the ignore string. Can probably be done as a one liner, but if you just need result it should work. Beware, if no matches found I think the script will stop.

# swap the file type from .txt
# swap you keep string and ignore string

find . -iname "*.txt" -execdir grep -l "keep_string" {} + > match &&\
find . -iname "*.txt" -execdir grep -L "ignore_string" {} + > ignore &&\
sort match ignore | uniq -u > output &&\
cat output &&\
rm ignore match &&\

exit
