#!/bin/bash

# DIO - Desafio Infraestrutura como Código:
# Script de Criação de Estrutura de Usuários, Diretórios e Permissões


# Criação das pastas
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Criação dos grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação dos usuários GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

# Criação dos usuários GRP_VEN
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

# Criação dos usuários GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

# Definindo permissão das pastas
chown GRP_ADM:GRP_ADM /adm
chown GRP_VEN:GRP_VEN /ven
chown GRP_SEC:GRP_SEC /sec

# Definindo permissão de acesso as pastas
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
