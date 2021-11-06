## This repo contains some basics to advanced concepts of The Linux BASH. It also has some utility bash-scripts which can be used to make life easier.
<br />

# Conventions ::

Lets first discuss about the conventions of writting bash-scripts.

The very first line should be a shebang line (https://en.wikipedia.org/wiki/Shebang_(Unix)).

## #!/bin/bash

Followd by Auther Description, Data created , Date Modified , short description & usage. Like below :

## #AUTHOR : Arnob kumar saha
## #Date Created : 06-11-2021
## #Last Modified : 10-12-2021

## #DESCRIPTION : write a one-liner comment to express the overall functionality of this script.
## #USAGE : How to use this script

After these lines , All the variables that have been used in the script should be declared.

## age=23
## x=something

Then the actuall script starts.

# You should know ::

1) Bash variables are untyped.
There is nothing like integer, string or bool variables in bash. You can imagine them as a bunch of characters stored in memory, with no special meaning. but, depending on context, Bash permits arithmetic operations and comparisons on variables. The determining factor is whether the value of a variable contains only digits.

2) It support arrays, which is a list of varibles.

3) List of scpecial characters : 
whitespaces like newLine, space, tab, carriagereturn etc.
' " \ $ # = [ ] { } ( ) ! < > | ; &  ` * ? ~ 

4) use the below syntax for multiline commenting in bash: <br />
: ' <br />
    first line <br />
    second line <br />
    .... <br />
' <br />
the space between the colon and singleQuote is important.

5) To run script, you may have to give the execution permission, using command like , <br />
chmod 744 filename

<br>

# Contents (in serial order) ::
[basics](https://github.com/ArnobKumarSaha/bashscripting/tree/main/basics) <br>
conditions <br>
rules <br>
loops <br>


