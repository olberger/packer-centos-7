#!/bin/sh
sudo yum install -y wget

wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
wget http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
sudo rpm -Uvh remi-release-7.rpm epel-release-latest-7.noarch.rpm
sudo yum --enablerepo=remi-php56 -y install php php-devel

sudo yum --enablerepo=remi-php56 -y install composer

sudo yum install -y git
sudo yum install -y patch

sudo sed -i 's,;date.timezone =,date.timezone = "Europe/Paris",' /etc/php.ini
