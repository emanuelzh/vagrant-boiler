#!/usr/bin/env bash

#arreglar virtual folders
#sudo ln -s /opt/VBoxGuestAdditions-4.3.10/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions

#paquetes necesarios
sudo apt-get update
sudo apt-get install -y curl vim git
sudo apt-get install -y apache2
sudo apt-get install -y sqlite3
sudo apt-get install -y php5 php5-fpm php5-cli php5-mcrypt php5-sqlite php5-mysql php5-pgsql php5-curl php5-json php5-gd
sudo apt-get install -y php5-xdebug phpunit

#apache mods
sudo a2enmod rewrite

#composer
sudo curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer --version

#habilitar mcrypt
sudo ln -s /etc/php5/conf.d/mcrypt.ini /etc/php5/mods-available
sudo php5enmod mcrypt

#repo
cd /vagrant
#git clone https://github.com/LabPLC/infomercado.git
#cd infomercado
#sudo composer install --dev

