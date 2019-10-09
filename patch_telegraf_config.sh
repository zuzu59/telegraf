#!/bin/bash
#Petit script pour 'patcher' la config Telegraf avec les bons sercrets qui se trouvent dans les variable d'environnements
#zf191009.1538

zfile="/etc/telegraf/telegraf.conf"

sudo sed -i -e "s/dbflux_srv_host/$dbflux_srv_host/g" $zfile
sudo sed -i -e "s/dbflux_srv_port/$dbflux_srv_port/g" $zfile
sudo sed -i -e "s/dbflux_u_user/$dbflux_u_user/g" $zfile
sudo sed -i -e "s/dbflux_p_user/$dbflux_p_user/g" $zfile


