#!/bin/bash

# printing first collumn of ps command. 'print $0' & 'print' means all collumn in this case
ps | awk '{print $1}'


# awk -F ":" quoteAndBracket # : is the column seperator 
#'{print $1"\t"$4}'

awk 'BEGIN{FS=":"; OFS="-"} {print $1,$4}' /etc/passwd


# ^/ means every line that begins with a slash, \ is used for escaping
awk -F "/" '/^\// {print $NF}' /etc/shells # only last word


df | awk '/\/dev\/loop/ {print $1"\t"$2 + $3}'

awk 'length($0) > 7' /etc/shells

ps -ef | awk '{ if($NF == "/bin/fish") print $0}'

awk 'BEGIN { for(i=1; i<=10; i++) print "sq of ", i, "is", i*i;}'

awk '$1 ~ /^[b,c]/ {print $0}' .bashrc

awk '{print substr($0, 4)}' numbered.txt


