#!/bin/bash
#Petit script pour installer Telegraf dans un container Docker sur Openshift
#zf191010.1033, zf200514.1530

apt update
apt install -y sudo wget
./install.sh
./docker_start.sh


