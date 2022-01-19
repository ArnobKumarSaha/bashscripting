#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 19-01-2022
# Lase modified : 20-01-2022

# DESCRIPTION : describes shell parameter expansion with examples
# USAGE : ./parameter2.bash


# all the examples from basics/03-variable.bash are of parameter expansion.

: '
set -- 1 2 3 4 5 6 7 8 9 0 a b c d e f g h

echo ${@} # list of all paramters, note that ${0} has not been echoed.
# to do so, use this, echo ${@:0}
echo ${0} # first positional parameter

echo ${@:7}  # all positional params starting from index 7
echo ${@:7:2} # 2 param starting from index 7

echo ${@:7:-2} #bash: -2: substring expression < 0
echo ${@: -7:2} # -1 is the last positional paramter. -7 is 7th from the last, then take 2 items
#b c
echo ${@:0:2}

# We could run these commands for array also .
array=(1 2 3 4 5 6 7 8 9 10)
echo ${array[@]: -7:2} $ prints 4 5

echo ${array[5]}
'

VAR1="VAR1"
VAR2="VAR2"
NON_VAR="VAR3"

echo "${!VAR*}"
echo "${!VAR@}"
echo "${!^*}"

#name=(3 5 7)
name=
echo ${!name[@]}
# if name is array , it prints 0 1 2
# else : if name is set (null or not null), prints 0
        #if name is not declared, prints nothing 