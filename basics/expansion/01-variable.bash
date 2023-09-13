#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 06-11-2021
# Lase modified : 13-09-2023

# DESCRIPTION : This script will show some basic stuffs we can do with variables.
# USAGE : ./01-variable.bash


# no need do declare like, x="hello" if it doesn't contain any special character
x=hello
y=world
echo "$x $y"


# there is a special character space, so using double quote is needed.
var="heLlo WoRld"

echo ${var,}  # 1st letter to lowercase
echo ${var,,} # all letters to lowercase
echo ${var^}  # 1st letter to uppercase
echo ${var^^} # all letters to uppercase
echo ${#var} # length

echo ${var::5} # first 5 characters, "heLlo"
echo ${var:4} # all excluding first 4 characters, "o WoRld"
echo ${var: -3} # last 3 characters,  space before minus is required. "Rld"
echo ${var:2:5} # staring from 2nd letter, cut a string of length 5. "Llo W"
echo ${var:2: -3} # strating from 2nd letter, not including last 3 letter, "Llo Wo"
echo ${var: -4:3} # takes last 4 letters, & then take first 3 of that, "oRl"
echo ${var: -4: -3} # takes last 4 letters, & then skip last 3 of that,  "o"

echo "----------- general parameter expansion -------------"

: '
    We have seen when to use ${var} style over $var.
    Now we will see the difference between $var, "$var" & "${var}"
    When using quoting "" , we tell the bash to remove the special meaning of all the special characters except $ and  `(backtick)

'

var="foo bar"
# touch $var # expands to touch foo bar. will create two files named foo & bar.
# touch "$var" # expands to touch "foo bar". will create a single file name "foo bar".

: '
    "${var}" is used for removing ambiguity of "$var" , just like ${var} does so for $var.
'

echo "$varxyz" # prints nothing
echo "${var}xyz" # prints..  foo barxyz

echo "------------- var starts with exclamation --------------------"

aa=bb
bb=cc
# If expansion starts with exclamation mark, it do an indirect expansion
printf "%s" ${!aa}  # prints cc, not bb

# It has exceptions though :
# 1) ${!prefix*} and ${!prefix@}.  It expands the variables whose name began with prefix.
aaa=1
aab=2
aac=3
printf '<%s>\n' "${!aa*}" # <aaa aab aac>
printf '<%s>\n' "${!aa@}" # <aaa> <bbb> <ccc>

# 2) ${!name[*]} and ${!name[@]}. It expands to the list of array indices
arr=(aa bb cc dd)
printf "%s\n" "${!arr[*]}"  # 0 1 2 3
printf "%s\n" "${!arr[@]}"  # same but in separate lines

# In both cases, if @ used, they expands to separate words


echo "------------- trim prefix --------------------"

parameter="There are many words. Some of the words appear more than once. Oh, my word!"
echo "${parameter#The}"     # re are many words. Some of the words appear more than once. Oh, my word!
echo "${parameter#*words}"  # . Some of the words appear more than once. Oh, my word!
echo "${parameter#words*}"  # There are many words. Some of the words appear more than once. Oh, my word!
echo "${parameter##*words}"  #  appear more than once. Oh, my word!
