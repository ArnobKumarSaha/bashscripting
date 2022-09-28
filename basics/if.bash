#!/bin/bash

if [[ foo || bar || baz ]] ; then
  ...
fi

[ foo ] || [ bar ] || [ baz ]

[ foo -o bar -o baz ]

# all these above three are equivalent


    [[ ]] is for strings and (( )) is for integer logic and arithmetic
    && and || operators can be used inside [[ ]] and (( )), and () can be used for grouping
    No need to quote variable expansions inside [[ ]] or (( )) - Bash doesn't do word splitting or globbing in these contexts
    Inside (( )), there is no need for a $ behind variable names to expand them
    [[ ]] and (( )) can span multiple lines, without the need for a line continuation with \

a=1 b=2 c=3
# Below two are equivalent
((a == 2 || (b == 2 && c == 3))) 
[ "$a" -eq 2 ] || { [ "$b" -eq 2 ] && [ "$c" -eq 3 ]; }

https://stackoverflow.com/questions/11267569/compound-if-statements-with-multiple-expressions-in-bash
