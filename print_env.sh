#!/bin/bash
#Petit script pour voir les variables d'env pour InfluxDB
#zf191010.10.34

for i in $(env |grep dbflux)
do
    echo " export "$i
done

