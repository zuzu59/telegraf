#!/bin/bash
#Petit script pour installer Telegraf dans un container Docker sur Openshift mais sous Centos et non Debian
#zf200513.1709

#source: https://computingforgeeks.com/install-and-configure-telegraf-on-rhel-centos/


cat <<EOF | sudo tee /etc/yum.repos.d/influxdb.repo
[influxdb]
name = InfluxDB Repository - RHEL
baseurl = https://repos.influxdata.com/rhel/7/x86_64/stable/
enabled = 1
gpgcheck = 1
gpgkey = https://repos.influxdata.com/influxdb.key
EOF


sudo yum -y install telegraf



exit



apt update
apt install sudo wget
./install.sh
./docker_start.sh


