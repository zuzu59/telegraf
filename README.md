# telegraf
Installe Telegraf sur sa machine pour monitorer son système

## Buts
Surveiller l'activité physique de sa machine informatique :-)

## Moyens
Telegraf, permet de le faire facilement


### Installation
Il suffit de faire tourner ce script:
```
./install.sh
```

**ATTENTION**<br>
Il faut que les secrets soit définis dans les variables d'environnement suivantes:

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



zf191009.1654
