
.PHONY:	all preparations libs update upgrade fonts python ruby virtualbox vagrant graphics darktable networking google_chrome dropbox slack archives media pandoc system harddisk docker ansible filesystem nodejs apache2 php7 mysql mysql-workbench postgres memcached mongodb tools encfs_manager nautilus httpie esl_repo erlang elixir couchdb teamviewer xmind presentation idea_intellij

all:
	@echo "Installation of ALL targets"
	make preparations
	make upgrade
	make fonts
	make graphics darktable 
	make networking google_chrome dropbox httpie
	make archives system 
	make harddisk filesystem tools encfs_manager nautilus
	make docker ansible virtualbox vagrant
	make nodejs
	make apache2 php7 mysql mysql-workbench memcached mongodb 
	make postgres
	make libreoffice_full
	make obs
	make jetbrains
	#make owncloud
	#make erlang elixir
	#make couchdb
	#make teamviewer
	#make xmind

preparations:	
	sudo apt-add-repository universe
	sudo apt-add-repository multiverse
	sudo apt-add-repository restricted
	make update
	sudo apt -y install software-properties-common build-essential checkinstall wget curl git apt-transport-https ca-certificates snapd


update:
	sudo apt update

upgrade:
	sudo apt -y full-upgrade
	sudo snap refresh

fonts:
	mkdir -p ~/.fonts/
	rm -f ~/.fonts/FiraCode-*
	wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Bold.otf -O ~/.fonts/FiraCode-Bold.otf
	wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Light.otf -O ~/.fonts/FiraCode-Light.otf
	wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Medium.otf -O ~/.fonts/FiraCode-Medium.otf
	wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Regular.otf -O ~/.fonts/FiraCode-Regular.otf
	wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Retina.otf -O ~/.fonts/FiraCode-Retina.otf
	fc-cache -v

python:
	sudo -H apt -y install python-pip
	sudo -H pip install --upgrade pip

java:
	sudo apt -y install default-jre 
	sudo apt -y install default-jdk 

networking:
	sudo apt -y install remmina

google_chrome:
	rm -f google-chrome-stable_current_amd64.deb
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt -y install libappindicator1 libindicator7
	sudo dpkg -i google-chrome-stable_current_amd64.deb
	rm -f google-chrome-stable_current_amd64.deb

dropbox:
	sudo apt -y install nautilus-dropbox


archives:
	sudo apt -y install unrar zip unzip rar

mysql:
	sudo apt -y install mysql-server

mysql-workbench:
	sudo apt -y install mysql-workbench

postgres:
	sudo apt -y install postgresql postgresql-contrib pgadmin3
	#sudo -i -u postgres psql
	#> \password postgres
	#> postgres
	#> postgres
	#> \q

tools:
	sudo apt -y install htop meld guake password-gorilla keepassx retext terminator vim geany ghex myrepos baobab axel gitg
	sudo apt -y install gnome-tweak-tools chrome-gnome-shell

nautilus:
	sudo apt -y install nautilus-image-converter nautilus-compare nautilus-wipe
	sudo add-apt-repository -y ppa:nilarimogard/webupd8 && sudo apt-get update && sudo apt -y install nautilus-columns

science:
	sudo apt -y install stellarium anki
	sudo apt-add-repository -yus "https://qgis.org/ubuntu $(lsb_release -cs) main"
	sudo apt -y qgis qgis-python 
	# lidar data viewer
	sudo snap install cloudcompare
	
libreoffice_full:
	# Remove the version of LibreOffice that ships with Ubuntu and install the upstream flatpak version
	sudo apt -y remove libreoffice libreoffice-base libreoffice-calc libreoffice-core libreoffice-draw libreoffice-impress
	if sudo flatpak list | grep org.libreoffice.LibreOffice/x86_64/stable; then echo LibreOffice is already installed; else sudo flatpak -y install https://flathub.org/repo/appstream/org.libreoffice.LibreOffice.flatpakref; fi
sudo chown -R $$USER:$$USER /home/$$USER # Fix permissions of /home

obs:
	sudo apt -y install obs-studio

jetbrains: 
	sudo snap install --classic rubymine intellij-idea-ultimate pycharm-professional clion datagrip 

anaconda:
	sudo mkdir /usr/local/anaconda3 && sudo chmod ugo+w /usr/local/anaconda3
	cd /tmp
	curl -O https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh
	bash Anaconda3-2018.12-Linux-x86_64.sh
	cd ~

#docker:
#	exit 1 # TODO
#	make python
#	sudo apt -y install linux-image-extra-virtual
#	sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
#	sudo sh -c "echo deb https://apt.dockerproject.org/repo ubuntu-bionic main > /etc/apt/sources.list.d/docker.list"
#	make update
#	sudo apt -y install docker-engine
#	# Installing docker compose additionally.
#	sudo pip install docker-compose


#virtualbox: virtualbox
#	exit 1 # TODO
	#echo "deb http://download.virtualbox.org/virtualbox/debian binoc contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.org.list
	#wget -q -O- http://download.virtualbox.org/virtualbox/debian/oracle_vbox_2016.asc | sudo apt-key add -
	#make update
	#sudo apt -y install virtualbox-5.1


#nodejs:
#	exit 1 # TODO
	#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
	#apt-get install -y nodejs

#apache2:
	@echo "Dont know how to do this yet :( TODO"
	#sudo apt -y install apache2-mpm-prefork apache2-utils
	#sudo a2enmod rewrite

#php7:
#    # TODO: Missing PHP modules here?
#	sudo apt -y install php7.0-json php7.0-mcrypt php7.0-intl php7.0-cli php7.0-sqlite3 \
#		php7.0-mysql php7.0-ldap php7.0-gmp php7.0-gd php7.0-curl php-pear php7.0-dev
#	sudo apt -y install php-bcmath php-bz2 php-curl php-enchant php-gd php-gmp php-imap \
#		php-interbase php-intl php-json php-ldap php-mbstring php-mcrypt php-mysql php-odbc \
#		php-pgsql php-pspell php-readline php-recode php-soap php-sqlite3 php-sybase \
#		php-tidy php-xml php-xmlrpc php-zip
#	# - Set php timezone to berlin in all php.ini files.
#	sudo sed -i 's@;date.timezone =@date.timezone = "Europe/Berlin"@g' /etc/php/7.0/*/php.ini
#	# - Active writing of PHAR files for cli.
#	sudo sed -i 's@;phar.readonly = On@phar.readonly = Off@g' /etc/php/7.0/cli/php.ini
#	#- PhpMyAdmin with 24 hours session lifetime.
#	sudo apt -y install phpmyadmin
#	#sudo sh -c "echo \"<?php $cfg['LoginCookieValidity'] = 3600 * 24; // 24 hours.\" > /etc/phpmyadmin/conf.d/LoginTimeout.php"


#mongodb:
#	sudo apt -y install mongodb

	# Fix for nautilus not starting my preferred terminal on right click.
	#sudo apt-get -y remove gnome-terminal
	#sudo ln -fs /usr/bin/terminator /usr/bin/gnome-terminal

#couchdb:
#	exit 1 # TODO
#	#sudo apt -y install couchdb

#teamviewer:
#	sudo apt -y install qml-module-qtquick-dialogs qml-module-qtquick-privatewidgets
#	rm -f teamviewer_amd64.deb
#	wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
#	sudo dpkg -i teamviewer_amd64.deb
#	rm -f teamviewer_amd64.deb

#xmind:
#	[ -f xmind-7-update1-linux_amd64.deb ] || wget --user-agent="Mozilla/5.0"  http://dl2.xmind.net/xmind-downloads/xmind-7-update1-linux_amd64.deb
#	sudo apt -y install lame libwebkitgtk-1.0-0
#	sudo dpkg -i xmind-7-update1-linux_amd64.deb

#idea_intellij:
#	sudo apt-add-repository -y ppa:mmk2410/intellij-idea
#	make update
#	sudo apt -y install intellij-idea-community

#slack:
#	apt -y install gvfs-bin libgnome-keyring0 gir1.2-gnomekeyring-1.0
#	rm -f slack-desktop-3.0.5-amd64.deb
#	wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.0.5-amd64.deb
#	sudo dpkg -i slack-desktop-3.0.5-amd64.deb
#	rm -f slack-desktop-3.0.5-amd64.deb

