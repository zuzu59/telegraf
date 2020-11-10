#!/bin/bash
#Petit script pour copier et 'patcher' la config Telegraf dans un container Docker runner sur Openshift sous Centos avec les bons sercrets qui se trouvent dans les variable d'environnements
#zf191010.0855, zf200629.1057, zf201110.0844

#BASH_XTRACEFD="5" && PS4='$LINENO: ' && set -e -v -x

zfile="/etc/telegraf/telegraf.conf"

sudo cp $(/usr/bin/dirname $0)/telegraf_runner.conf $zfile

sudo sed -i -e "s/dbflux_srv_host/$dbflux_srv_host/g" $zfile
sudo sed -i -e "s/dbflux_srv_port/$dbflux_srv_port/g" $zfile
sudo sed -i -e "s/dbflux_u_user/$dbflux_u_user/g" $zfile
sudo sed -i -e "s/dbflux_p_user/$dbflux_p_user/g" $zfile


