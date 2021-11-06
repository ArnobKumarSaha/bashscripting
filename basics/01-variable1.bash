#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 06-11-2021
# Lase modified : 06-11-2021

# DESCRIPTION : This script will show some basic stuffs we can do with variables.
# USAGE : ./01-variable.bash


# no need do declare like, x="hello" if it doesn't contain any special character
x=hello
y=world

# $ is used to extract the value of a variable
# Note : $var & ${var}  are almost same. second style used to remove ambiguity.
# The difference between these two is, ${var} is more flexible & we can do some stuffs (has been shown in 03-variable2.bash) ,
# which we could not do uisng $var style.
: '
    for example , 
    v=foo
    echo $vbar
    # Prints nothing because there is no variable 'vbar'
    echo ${v}bar
    # prints 'foobar'
'
echo "$x $y"



