#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date created : 26-01-2022
# Lase modified : 26-01-2022

# DESCRIPTION : some regex stuffs
# USAGE : ./regex.bash


. [ { ( ) \ ^ $ | ? * + 
# All the above mentioned characters need to be escaped in regex
# use backslash \ to escape them

. # any char except a new line
\d # any digit [0-9]
\w # word character.  [a-z], [A-Z], [0-9] and underscore (_)
\s # whitespace. space, tab, newline
\b # word boundary. this matches the boundary between word character and nonWord character
   # pipe sign (|) are word boundary in the following example,  |abc| |d_ef23|-+*&%|
   # In 'Ha HaHa' , fining \bHa gives, |Ha| |HaHa| first two 'Ha'. bcz last one is does not have \b in front

^ # beginning of a line
$ # end of a line


<<< Character set
[] # for character-set. For example, [7-9]0[-.]\d\d
# this matches, 70-zz, 80-xx, 90-xx, 70.xx, 80.xx, 90.xx , where xx is any digit
# also look that, we don't escape character inside character-set
[^] # ^ inside the characterSet means negetion. [^1-3] means all chars except 1, 2 and 3
| # either or
() # group # see the name-example below for use of pipe & group


<<< Quantifiers
* # 0 or more
+ # 1 or more
? # 0 or 1
{} # exact number
{,} # range of number
# for example, \d{3}-\d{2} means exactly 3 digit + a hyphen + exactly 2 digits

Mr. Arnob
Mr Kumar
Ms Arnob
Mrs Saha
Mr. A
# to match all the above names,   M(r|s|rs)\.?\s[A-Z]\w*