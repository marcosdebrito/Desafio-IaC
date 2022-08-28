#!/bin/bash

echo "Criando diretórios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários e adicionando aos grupos ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários ..."

useradd carlos       -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GPR_ADM
useradd maria        -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GPR_ADM
useradd joao         -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GPR_ADM

useradd debora       -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GRP_VEN
useradd sebastiana   -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GPR_VEN
useradd roberto      -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GPR_VEN

useradd josefina     -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GPR_SEC
useradd amanda       -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GPR_SEC
useradd rogerio      -m -s /bin/bash -p $(openssl passwd -crypt Senha 123456) -G GPR_SEC

echo "Especificando permissões dos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim!"
