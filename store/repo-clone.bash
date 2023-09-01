#! /bin/bash

GO_SRC=/home/arnob/go/src/

# curl -L \
#   -H "Accept: application/vnd.github+json" \
#   -H "Authorization: Bearer <YOUR-TOKEN>" \
#   -H "X-GitHub-Api-Version: 2022-11-28" \
#   https://api.github.com/orgs/ORG/repos


declare -A ar
ar[0]="kubedb.dev kubedb apimachinery autoscaler cli db-client-go docs elasticsearch installer kafka mariadb mongodb mongodb-init-docker mysql 
         ops-manager postgres percona-xtradb proxysql redis schema-manager tests ui-server webhook-server"
ar[1]="kubeops.dev kubeops falco-ui-server installer panopticon scanner sidekick trivydb-docker ui-server"
ar[2]="go.bytebuilders.dev bytebuilders b3 cluster-ui installer kubedb-ui platform-ui launchpad license-proxyserver"
ar[3]="go.kubeware.dev kubeware catalog catalog-manager installer kube-bind-server"
ar[4]="stash.appscode.dev stashed apimachinery enterprise installer mongodb"
ar[5]="kubestash.dev kubestash addon-template apimachinery installer kubedb-manifest kubestash mongodb"

for i in ${!ar[@]}
do
    x=${ar[$i]}
    line=($x)

    mkdir -p ${GO_SRC}/${line[0]}
    cd ${GO_SRC}/${line[0]}

   for (( i=2; i<${#line[@]}; i++ ));
    do
        git clone git@github.com:${line[1]}/${line[$i]}.git
    done 
done


# Different approach
# repos=(kubestash.dev kubestash addon-template apimachinery installer kubedb-manifest kubestash mongodb)

# for repo in ${repos[@]}
# do
#     git clone git@github.com:${ORG}/${repo}.git
# done