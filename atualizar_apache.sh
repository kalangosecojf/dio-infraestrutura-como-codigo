#!/bin/bash

# Atualizando o servidor
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

# Baixar aplicação na pasta /tmp
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Descompactar
unzip main.zip

# Copiar contedudo baixado para pasta web raiz 
cd linux-site-dio-main
cp -R * /var/www/html/