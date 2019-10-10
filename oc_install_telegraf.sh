#!/bin/bash
#Petit script pour installer Telegraf dans un container Docker sur Openshift
#zf191010.1033

apt update
apt install sudo wget
./install.sh
./docker_start.sh


