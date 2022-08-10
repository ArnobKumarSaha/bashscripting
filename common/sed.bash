#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 10-08-2022
# Lase modified : 10-08-2022

# DESCRIPTION : sed stands for `stream editor`
# USAGE : ./sed.bash
# sources: DistroTube, LukeSmith,


# Basic structure
# sed 's/find/replace/' < oldfile > newfile
# sed -i 's/find/replace/g' filename       # Read & Write in the same file

sed '/str/s/find/replace'   # Serach for word `find` on only those lines those contain word `str`. Then replace `find` with word `replace`

sed '/find/d'               # Delete the word `find`
sed -n '/usr/p'             # Print the lines which contain word `usr`

cat /etc/shells | sed -e 's|usr|u|g' -e 's#bin#b#g'  # Use -e to support multiple patterns.  Use any special character instead of `/` whenever needed
cat /etc/shells | sed 's|usr|u|g;s#bin#b#g'          # Same as the previous command

sed -i 's/ *$//'            # Delete all the spaces in the end of the line
sed -i 's/[[:space:]]*$//'  # Delete all the space-characters (ex, Tabs) in the end of the line
sed '/^$/d'                 # Delete empty lines
sed 's/\s*#.*//g'           # Delete comments


sed 's/[a-z]/\U&/g'         # lower case to Upper case,  Use \L to convert into lower case

