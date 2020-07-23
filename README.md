# telegraf
Installe Telegraf sur sa machine ou un container Docker pour monitorer son système

zf200723.1503

<!-- TOC titleSize:2 tabSpaces:2 depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 skip:0 title:1 charForUnorderedList:* -->
## Table of Contents
* [telegraf](#telegraf)
  * [Buts](#buts)
  * [Moyens](#moyens)
    * [Installation pour machines Linux ou Docker](#installation-pour-machines-linux-ou-docker)
      * [Les secrets se trouve dans Keybase dans:](#les-secrets-se-trouve-dans-keybase-dans)
    * [Démarrage du service telegraf](#démarrage-du-service-telegraf)
    * [Redémarrage du service telegraf](#redémarrage-du-service-telegraf)
    * [Arrêt du service telegraf](#arrêt-du-service-telegraf)
    * [Configuration de Grafana pour utiliser Telegraf](#configuration-de-grafana-pour-utiliser-telegraf)
      * [Configuration de la data source pour Telegraf](#configuration-de-la-data-source-pour-telegraf)
      * [Configuration du dashboard pour Telegraf](#configuration-du-dashboard-pour-telegraf)
      * [On peut aussi plus simplement utiliser le dashboard tout fait pour bien travailler facilement avec Telegraf](#on-peut-aussi-plus-simplement-utiliser-le-dashboard-tout-fait-pour-bien-travailler-facilement-avec-telegraf)
    * [Liste de tous les plugins de Telegraf](#liste-de-tous-les-plugins-de-telegraf)
<!-- /TOC -->

## Buts
Surveiller l'activité physique de sa machine informatique :-)


## Moyens
Telegraf, permet de le faire facilement. Les résultats se trouveront dans une DB InfluxDB et visualisés avec Grafana
```
https://github.com/zuzu59/docker-influxdb-grafana
```


### Installation pour machines Linux ou Docker
Il suffit de faire tourner ce script:
```
./install_<*>.sh
```


**ATTENTION**<br>
Pendant la phase d'installation de Telegraf, il faut une fois définir les secrets dans les variables d'environnement suivantes:

* dbflux_u_user
* dbflux_srv_host
* dbflux_db
* dbflux_p_user
* dbflux_srv_port
* dbflux_srv_user
* dbflux_p_admin
* dbflux_u_admin


#### Les secrets se trouve dans Keybase dans:
```
source /keybase/team/epfl_wwp_blue/influxdb_secrets.sh
```


### Démarrage du service telegraf
```
./start.sh
```


### Redémarrage du service telegraf
```
./restart.sh
```


### Arrêt du service telegraf
```
./stop.sh
```


### Configuration de Grafana pour utiliser Telegraf
#### Configuration de la data source pour Telegraf
![Image](https://raw.githubusercontent.com/zuzu59/telegraf/master/img/grafana_configuration_data_source_telegraf.gif)


#### Configuration du dashboard pour Telegraf
![Image](https://raw.githubusercontent.com/zuzu59/telegraf/master/img/grafana_configuration_dashboard_telegraf.gif)


#### On peut aussi plus simplement utiliser le dashboard tout fait pour bien travailler facilement avec Telegraf

https://grafana.com/grafana/dashboards/928


### Liste de tous les plugins de Telegraf

https://v2.docs.influxdata.com/v2.0/reference/telegraf-plugins/
