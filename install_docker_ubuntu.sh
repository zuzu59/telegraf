#!/bin/bash
#Petit script pour installer Telegraf dans un container Docker sur Openshift
#zf191010.1033, zf200514.2314

BASH_XTRACEFD="5" && PS4='$LINENO: ' && set -e -x -v

sudo apt update
sudo apt install -y sudo wget gnupg
sleep 3
./install_linux_ubuntu.sh

#./docker_start.sh


