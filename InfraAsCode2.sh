#!/bin/bash

echo "Atualização e instalação de softwares"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixar e copiar app"
cd /tmp
wget https://github.com/Marcelo-RM/portifolio/archive/refs/heads/master.zip
unzip portifolio-master.zip
cd portifolio-master
cp -R * /var/www/html/
