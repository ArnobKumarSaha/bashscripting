#!/bin/bash

echo "\$0: $0"

echo ${FUNCNAME[0]} in ${BASH_SOURCE[0]}

fun() {
    echo ${FUNCNAME[0]} in ${BASH_SOURCE[0]}
    echo $0
}

fun