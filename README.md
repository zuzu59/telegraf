# telegraf
Installe Telegraf sur sa machine pour monitorer son système

zf200624.1602

## Buts
Surveiller l'activité physique de sa machine informatique :-)


## Moyens
Telegraf, permet de le faire facilement


### Installation
Il suffit de faire tourner ce script:
```
./install_linux_ubuntu.sh
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


### Configuration de Grafana pour utiliser telegraf
#### Configuration de la data source pour Telegraf
![Image](https://raw.githubusercontent.com/zuzu59/telegraf/master/img/grafana_configuration_data_source_telegraf.gif)



#### Configuration du dashboard pour Telegraf
![Image](https://raw.githubusercontent.com/zuzu59/telegraf/master/img/grafana_configuration_dashboard_telegraf.gif)

