#!/bin/bash

dashboards=$(kubectl get grafanadashboards -A -ojsonpath='{range .items[*]}{.metadata.namespace}{":"}{.metadata.name}{"\\n"}{end}')

#echo -e $dashboards

while read -r line; do
    readarray -d : -t strarr <<< "$line"
#    echo "${strarr[0]} ${strarr[1]}"
    kubectl patch grafanadashboard -n ${strarr[0]} ${strarr[1]} -p '{"metadata":{"finalizers":null}}' --type=merge --dry-run=client
done <<< $(echo -e $dashboards)
