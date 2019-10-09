#!/bin/bash
#Petit script pour installer tout le binz
#zf191009.1654

# source: https://docs.influxdata.com/telegraf/v1.12/introduction/installation/

echo -e "
Installation de Telegraf sur cette machine !

**ATTENTION**
Il faut que les secrets soit définis dans les variables d'environnement suivantes:

* dbflux_u_user
* dbflux_srv_host
* dbflux_db
* dbflux_p_user
* dbflux_srv_port
* dbflux_srv_user
* dbflux_p_admin
* dbflux_u_admin
"

read -p "Etes-vous certain de vouloir continuer ?"

sudo apt update
wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add -
source /etc/lsb-release
echo "deb https://repos.influxdata.com/${DISTRIB_ID,,} ${DISTRIB_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

sudo apt update && sudo apt install -y telegraf

curl -i -XPOST "$dbflux_srv_host:$dbflux_srv_port/query?u=$dbflux_u_admin&p=$dbflux_p_admin"  --data-urlencode "q=CREATE DATABASE telegraf"
curl -i -XPOST "$dbflux_srv_host:$dbflux_srv_port/query?u=$dbflux_u_admin&p=$dbflux_p_admin"  --data-urlencode "q=GRANT ALL ON telegraf TO $dbflux_u_user"

sudo cp telegraf.conf /etc/telegraf/telegraf.conf
./patch_telegraf_config.sh

./start.sh
