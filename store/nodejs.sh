#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

source $HOME/.bashrc

nvm install 16.13.0

NPM_VERSION=$(npm -v)
#NVM_VERSION=$(nvm -v)
NODE_VERSION=$(node -v)

echo "npm version $NPM_VERSION"
#echo "nVm version $NVM_VERSION"
echo "node version $NODE_VERSION"

