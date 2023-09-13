#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 06-11-2021
# Lase modified : 06-11-2021

# DESCRIPTION : This script will show some way to evaluate arithmetic operations:  $(( )), let, expr
# USAGE : 02-./arithmatic.bash


# first way
n1=5
n2=8

: '
    $(( EXPRESSION )) style is used for evaluating some arithmatic expression
    inside $(( )), using $ before the varibleName & not using $, is exactly same.
'
echo $(($n1+$n2))

echo $((n1+n2))



# second way
: '
    We can use "let <arithmetic expression>" to evalutae expression also
'

let "a = 5 + 4"
let a++
echo "a = $a"

let "4 + 5" # does nothing



# third way
: '
expr is similar to let except instead of saving the result to a variable it instead prints the answer. 
Unlike let you dont need to enclose the expression in quotes. You also must have spaces between 
the items of the expression. It is also common to use expr within command substitution to save the output to a variable.
'
expr 5 + 4
expr "5 + 4"
expr 5+4

expr 5 \* 3  # * is special character, so We need to escape its special meaning.
a=$( expr 10 - 3 )
echo $a 