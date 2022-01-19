#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 19-01-2022
# Lase modified : 20-01-2022

# DESCRIPTION : describes shell parameter expansion with examples
# USAGE : ./parameter.bash

: '
There are total of GROUPs : 
1. ${parameter:-word}
   ${parameter-word}
2. ${parameter:=word}
   ${parameter=word}
3. ${parameter:?word}
   ${parameter?word}
4. ${parameter:+word}
   ${parameter+word}
'

: '
    Parameters are three types :
    1) Set & not null
    2) set & null  [[colon(:) only makes impact in this case]]
    3) unset (not declared)
'

: '
#CASE 1 (-) : If unset, use value
# Parameter is set and not null
VAR_1=var1
echo "VAR_1 is ${VAR_1:-abc}" # "var1"
# Parameter is set but null
VAR_2=
echo "VAR_2 is ${VAR_2:-abc}"  # "abc"
echo "This will not hold the value $VAR_2." # ""
# Parameter is not set
echo "VAR_3 is ${VAR_3:-abc}" # "abc"

# now you will see, :- makes impact for VAR_2 where - doesnot
VAR_2=
echo "VAR_2 is ${VAR_2-abc}" # ""
'


: '
#CASE 2 (=) : If unset, set value
# Parameter is set and not null
VAR_1="var 1"
echo "VAR_1 is ${VAR_1:=abc}."
# Parameter is set but null
VAR_2=
echo "VAR_2 is ${VAR_2:=abc}."
echo "The VAR_2 holds the value $VAR_2." # "abc"
# Parameter is not set
echo "VAR_3 is ${VAR_3:=abc}."

VAR_2=
echo "VAR_2 is ${VAR_2=abc}" 
'



: '
#CASE 3 (+) : If set, use value
VAR_1=var1
echo "VAR_1 is ${VAR_1:+new var}" # "new var"
echo "VAR_1 is $VAR_1." # "var1"
# null value, no substitution
VAR_2=
echo "VAR_2 is ${VAR_2:+new var}" # ""
# unset, no substitution
echo "VAR_3 is ${VAR_3:+new var}" # ""

# null vaule, substitution
VAR_2=
echo "VAR_2 is ${VAR_2+abc}" # "abc"
'


: '
#CASE 4 (?) : If set, use value. else give error-value in the standard error
# Parameter is set and not null
VAR_1="var 1"
echo "VAR_1 is ${VAR_1:?no value}."
# Parameter is set but null
VAR_2=
echo "VAR_2 is ${VAR_2:?no value}." # provides error./bash 1 2 3 4 5 6 7 8 9 0 a b c d e f g h
echo "The VAR_2 holds the value $VAR_2."
# Parameter is not set
echo "VAR_3 is ${VAR_3:?no value}." # provides error
echo "The VAR_3 holds the value $VAR_3."

# Parameter is set but null
VAR_2=
echo "VAR_2 is ${VAR_2?no value}" # ""
'


#                     SetAndNotNull	        SetButNull	      Unset
# ${parameter:-word}  substitute parameter	substitute word	  substitute word
# ${parameter-word}	  substitute parameter	substitute null	  substitute word
# ${parameter:=word}  substitute parameter	assign word	      assign word
# ${parameter=word}	  substitute parameter	substitute null	  assign word
# ${parameter:+word}  substitute word	    substitute null	  substitute null
# ${parameter+word}	  substitute word	    substitute word	  substitute null
# ${parameter:?word}  substitute parameter	error, exit	      error, exit
# ${parameter?word}	  substitute parameter	substitute null	  error, exit

# If the parameter is SetButNull, -,=,? takes the null value. 
# Whereas, :-.:=,;? takes the word value.
# + is exactly the opposite. 

