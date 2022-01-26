#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 26-01-2022
# Lase modified : 26-01-2022

# DESCRIPTION : This script will show some stuffs that can be done using grep.
# USAGE : ./grep.bash

grep "your-search" filename # this does string search, by default case sensitive
-w # for word (exact search)
-i # for case ignore
-n # for line number

-B <number> # n number of line (before the match) to show
-A <number> # same as B, for 'after the match'
-C <number> # center . (before & after)

grep "your-search" some-folder/*  # to use grep in a whole directory. Here * is important
# If * is not given , it says some-folder is a directory
-r # to search in the sub-directories also

-l # to show only the file names of match
# if your search result can be found multiple times in a file, it shows once
-c # for count. It shows the filename & how many times your serach result matched in that file

-P # for perl-compatible-regular-expression
grep -P "\d{3}-\d{2}" file.txt # searches 3 digits + a dash + 2 digits in file.txt