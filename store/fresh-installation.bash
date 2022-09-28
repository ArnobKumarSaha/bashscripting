#!/bin/bash

: '
	Convered packages are :
	curl vim tldr google-chrome zoom qbittorrent vlc spotify <togetherpackages> ubuntu-restricted-extras
	sublime-text vs-code goland postman node go docker kubectl kind
'



sudo add-apt-repository universe
sudo add-apt-repository multiverse

sudo apt-get update
sudo apt-get upgrade


sudo apt install curl vim tldr -y
tldr sed

Google-Chrome
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
rm google-chrome-stable_current_amd64.deb

Zoom
sudo snap install zoom-client


sudo apt-get install qbittorrent -y
sudo snap install vlc
sudo snap install spotify

sudo apt-get install -y software-properties-common apt-transport-https \
 linux-tools-common linux-tools-generic linux-tools-$(uname -r) \
 build-essential automake \
 terminator fish curl tree rlwrap gnome-tweak-tool httpie \
 graphviz libappindicator1 subversion mercurial \
 python-dev python-setuptools python3-pip


sudo apt install ubuntu-restricted-extras -y

Sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text


VSCode
curl https://az764295.vo.msecnd.net/stable/899d46d82c4c95423fb7e10e68eba52050e30ba3/code_1.63.2-1639562499_amd64.deb --output code_1.63.2-1639562499_amd64.deb
sudo dpkg -i code_1.63.2-1639562499_amd64.deb
sudo apt-get install -f -y
rm code_1.63.2-1639562499_amd64.deb


curl https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.22.10970.tar.gz --output jetbrains-toolbox-1.22.10970.tar.gz
sudo tar -xzf jetbrains-toolbox-1.22.10970.tar.gz -C /opt


sudo snap install postman
sudo apt-get install git git-gui -y



curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source $HOME/.bashrc # this does not work inside script, `exec bash` is a solution ? 
nvm install 16.13.0

bash go.bash



sudo apt-get install ca-certificates curl gnupg lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y
sudo docker run hello-world

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
ocker run hello-world


curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client


GO111MODULE="on" go get sigs.k8s.io/kind@v0.11.1
























