#!/bin/bash

# set red blue green  -> now $1==red, $2==blue etc..
# set -- -> for unset env

# -u -> if something is unset returns error
# -e -> instructs a shell to exit if a command yields a non-zero exit status
# -x -> print the command first, then execute it

set -e -x

#foobar # | echo "hello"  -< -e option doesn't work if using with pipe
# to overcome this, use 'set -eo pipefail'

#echo $something





user=$(openssl x509 -in pemo -inform PEM -subject -nameopt RFC2253 -noout)
echo "dfd $user"

echo ""

user=$(echo ${user#"subject="})
echo "$user"
