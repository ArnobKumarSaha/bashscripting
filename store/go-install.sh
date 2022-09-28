#!/bin/bash

# AUTHOR : Arnob kumar saha
# Date : 16-10-2021
# Usage : ./go.sh 1.19.1


# setting up GO_VERSION variable	

if [ "$#" == 1 ]; then
	GO_VERSION="$1"
else 
	GO_VERSION=1.19.1
fi
echo "You have chosen go version $GO_VERSION"



# download the tar file & extract that on /usr/local/go

wget https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz
if [ $? != 0 ]; then
	echo "Go version ${GO_VERSION} not available. "
	exit 1
fi
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz



# Add environment variables to ~/.bashrc file

str=$'export GOPATH=$HOME/go\n'
str+=$'export GOROOT=/usr/local/go\n'
str+=$'export GOBIN=$HOME/go/bin\n'
str+=$'export PATH=$GOBIN:$GOROOT/bin:$PATH\n'
cat <(echo "${str}" ) >> $HOME/.bashrc




# check if everything goes right, then delete the tar file

go version
if [ $? == 0 ]; then
	echo "Go version ${GO_VERSION} successfully installed."
else 
	echo "Erro occured when installing go."
fi
rm go${GO_VERSION}.linux-amd64.tar.gz
