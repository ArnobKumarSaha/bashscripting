Bash executes a 5-step process before execute a command.

## 1) Tokenization :

After Tokenization the whole command divides into parts. Each of the part is either 'word' or 'operator'.

### Word doesn't contain any unquoted meta-character
### Operator containes at least one  unquoted meta-character

So here, the meaning of unquoted meta-character plays the vital role to distiguish between words & operators.

In linux, There are total of 10 punctuations that are known as metaCharacters. They are :: <br>
 | & ; ( ) < > space tab newLine

We also need to know the meaning of 'unquoted' too.  There are 3 types of quoting (means Removing special meaning) in linux.  They are :: <br>

i)   \  -> Removing special meaning of next character <br>
ii)  '' -> Removing special meaning of all the characters inside <br>
iii) "" -> Removing special meaning of all the characters inside, except dollar($) and backtick(`).

So In simple, If you find any of the 10 metaCharacters, that has not been quoted in any of the above three ways, Thats an operator !!


## 2) Command Identification :

There are two types of commands. Simple & Compound.  To distinguish between them, We need a good understanding of operators. As we already know what actually operators are, lets divide them into different types :

a) Control operators : <br>
| || & && ; ;; ;& ;;& |& ( ) newLine

b) Redirection operators : <br>
< > << >> <& >& <> <<- >|

Look carefully that, redirection operators always either < or >. Also, space and tab are just separators. They dont have effect on controlling or redirecting.

## 3) Expansion :

As this stage is a very big and complex, it generally divided into 4 steps.
### a) Brace Expansion :
It will be easier to understand this by example, rather than explanation.

echo {a,b,42,arnob}_xyz # prints a_xyz b_xyz 42_xyz arnob_xyz <br>
echo {1..5} # prints 1 2 3 4 5  <br>
echo {z..a..5} # prints z u p k f a <br>
mkdir -p path/{ucb/{ex,edit},lib/{ext,abc}}  # make directories .. <br>path/lib/abc , path/lib/ext ,  path/ucb/edit , path/ucb/ex

### b) Intermidiate Expansion :

### c) Word splitting :

### d) Globbing :




## 4) Quote Removal :

## 5) Redirection :