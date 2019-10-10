#!/bin/bash
#Petit script pour voir les varaibles d'env pour InfluxDB
#zf191010.0935

for i in $(env |grep dbflux)
do
    echo " export "$i
done

