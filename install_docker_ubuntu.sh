#!/bin/bash
#Petit script pour installer Telegraf dans un container Docker sur Openshift
#zf191010.1033, zf200514.1559

apt update
apt install -y sudo wget
sleep 3
./install_linux_ubuntu.sh
./docker_start.sh


