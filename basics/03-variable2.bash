#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 06-11-2021
# Lase modified : 06-11-2021

# DESCRIPTION : This script will show some interesting stuffs we can do with variables.
# USAGE : ./03-variable.bash



# there is a special character space, so using double quote is needed.
var="heLlo WoRld"

echo ${var,}  # 1st letter to lowercase
echo ${var,,} # all letters to lowercase
echo ${var^}  # 1st letter to uppercase
echo ${var^^} # all letters to uppercase
echo ${#var} # length

echo "*****"
echo ${var::5} # first 5 characters
echo ${var:4} # all excluding first 4 characters
echo ${var: -3} # last 3 characters,  space before minus is required.
echo ${var:2:5} # staring from 2nd letter, cut a string of length 5.
echo ${var:2: -3} # strating from 2nd letter, not including last 3 letter
echo ${var: -4:3} # takes last 4 letters, & then take first 3 of that
echo ${var: -4: -3} # takes last 4 letters, & then skip last 3 of that

echo "-------------------------"

: '
    We have seen when to use ${var} style over $var.
    Now we will see the difference between $var, "$var" & "${var}"
    When using quoting "" , we tell the bash to remove the special meaning of all the special characters except $ and  `(backtick)

'

var="foo bar"
touch $var # expands to touch foo bar. will create two files named foo & bar.
touch "$var" # expands to touch "foo bar". will create a single file name "foo bar".

: '
    "${var}" is used for removing ambiguity of "$var" , just like ${var} does so for $var.
'

echo "$varxyz" # prints nothing
echo "${var}xyz" # prints..  foo barxyz
