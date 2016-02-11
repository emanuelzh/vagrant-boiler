#!/usr/bin/env bash
#initial update and basics
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y language-pack-en-base
sudo apt-get install -y software-properties-common
sudo apt-get install -y curl vim git wget
sudo apt-get install -y sqlite3

#mysql 5.6
sudo apt-get install -y mysql-server-5.6

#mariadb
#sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
#sudo add-apt-repository 'deb [arch=amd64,i386] http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu vivid main'
#sudo apt-get update
#sudo apt-get -y install mariadb-server

#postgres
#TODO: add postgres stuff

#apache and modules
sudo apt-get install -y apache2
sudo a2enmod rewrite

#php 7.0
sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php-7.0
sudo apt-get install -y php7.0
sudo apt-get install -y php7.0-mysql
php -v

#hhvm
# installs add-apt-repository
#sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0x5a16e7281be7a449
#sudo add-apt-repository 'deb http://dl.hhvm.com/ubuntu $(lsb_release -sc) main'
#sudo apt-get update
#sudo apt-get -y install hhvm

#php 5.6
#sudo LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php5-5.6
#sudo apt-get install -y php5 php5-cli php5-mcrypt php5-sqlite php5-mysql php5-pgsql php5-curl php5-json php5-gd
#sudo apt-get install -y php5-xdebug phpunit
#habilitar mcrypt
#sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available
#sudo php5enmod mcrypt

#composer
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer --version
