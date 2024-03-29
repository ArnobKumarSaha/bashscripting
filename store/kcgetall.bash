#!/bin/bash

# Usage ./kcgetall.bash <namespace>

Green='\033[0;32m'
NC='\033[0m' # No Color



function kubectlgetall {
  for i in $(kubectl api-resources --verbs=list --namespaced -o name | grep -v "events.events.k8s.io" | grep -v "events" | sort | uniq); do
    res=$(kubectl -n ${1} get --ignore-not-found ${i})
    if [[ ${#res} -gt 0 ]]; then
        echo -e "Resource: ${Green} $i ${NC}"
        kubectl -n ${1} get --ignore-not-found ${i}
    fi
  done
}

kubectlgetall "${1}"
