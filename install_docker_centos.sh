#!/bin/bash
#Petit script pour installer Telegraf dans un container Docker sur Openshift mais sous Centos et non Debian
#zf200629.1057

#source: https://computingforgeeks.com/install-and-configure-telegraf-on-rhel-centos/

#BASH_XTRACEFD="5" && PS4='$LINENO: ' && set -e -v -x

cat <<EOF | sudo tee /etc/yum.repos.d/influxdb.repo
[influxdb]
name = InfluxDB Repository - RHEL
baseurl = https://repos.influxdata.com/rhel/7/x86_64/stable/
enabled = 1
gpgcheck = 1
gpgkey = https://repos.influxdata.com/influxdb.key
EOF


sudo yum -y install telegraf

#A faire seulement si Influxdb n'est pas configuré !
#curl -i -XPOST "$dbflux_srv_host:$dbflux_srv_port/query?u=$dbflux_u_admin&p=$dbflux_p_admin" --data-urlencode "q=CREATE DATABASE telegraf"
#curl -i -XPOST "$dbflux_srv_host:$dbflux_srv_port/query?u=$dbflux_u_admin&p=$dbflux_p_admin" --data-urlencode "q=GRANT ALL ON telegraf TO $dbflux_u_user"

$(/usr/bin/dirname $0)/patch_telegraf_config.sh


