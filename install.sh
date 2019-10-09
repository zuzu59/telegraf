#!/bin/bash
#Petit script pour installer tout le binz
#zf191009.1414

# source: https://docs.influxdata.com/telegraf/v1.12/introduction/installation/


sudo apt update
wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
source /etc/lsb-release
echo "deb https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

sudo apt update && sudo apt install -y telegraf


#sudo systemctl start telegraf

