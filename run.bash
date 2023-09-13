#!/bin/bash

parameter="There are many words. Some of the words appear more than once. Oh, my word!"
echo "${parameter#The}"
echo "${parameter#*words}"
echo "${parameter#words*}"
echo "${parameter##*words}"