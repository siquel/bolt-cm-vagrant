#!/bin/bash

export DEBIAN_FRONTEND="noninteractive"
echo "mariadb-server mysql-server/root_password password $1" | debconf-set-selections
echo "mariadb-server mysql-server/root_password_again password $1" | debconf-set-selections

apt-get install software-properties-common -y
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db
add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://mirror.netinch.com/pub/mariadb/repo/10.1/debian jessie main'

apt-get update

apt-get install mariadb-server -y
