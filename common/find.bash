#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 26-01-2022
# Lase modified : 05-09-2023

# DESCRIPTION : This script will show some stuffs that can be done using find.
# USAGE : ./find.bash

find ./demo  # find everything (multilevel) in demo directory
# to set the depth of level, use
-maxdepth <depth>

-type d # only directories
-type f # only files

-name <a-name> # wildcard supported
-iname <a-name> # case insensitive use of '-name' 

# m for modified, min for minute
-mmin -10 # those are modified less than 10 minutes ago
-mmin +10 # those are modified more than 10 minutes ago
-mtime # same as above, just calculation goes on days instead of minutes
# a for access -> amin, atime
# c dor chance -> cmin, ctime

-size +5M # size more than 5 megabytes, K for kiloBytes, G for gigaBytes
-empty # find all files those are empty (containes nothing)
-perm 755 # those have permission 755

find demo -exec chown arnob:some-group {} + # executing `chown arnob:some-group <file-name>` commnad
# {} is just a placeholder for file-name,  And + is the sign to end the exec command. 
# \; could be used instead of +  and any sign could be used as placeholder

find . -path */store/*  # Find the paths that match */store/*
find . -iname *.sh -o -name *.bash  # all shell or bash files
find . ! -name p*.bash   # not operator

# to find the readme files with path */doc/*, or license files with arbitrary paths
find / \( -path */doc/* -name README \) -o -name LICENSE  # backslashes to escape

