#!/bin/bash

apt-get update

apt-get install php5-common php5-dev php5-cli php5-fpm -y
apt-get install php5-curl php5-gd php5-mcrypt php5-mysql -y
apt-get install nginx -y
apt-get install curl -y
