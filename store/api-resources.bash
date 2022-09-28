#!/bin/bash

# First run `kubectl api-resources > resources`
# Then, to list only the resource names those are not gettable, run this script

while read p; do
    out=$(kubectl get "$p" -A)
    if [[ "$?" == "1" ]]; then
        echo "$p"
    fi
done <resources
