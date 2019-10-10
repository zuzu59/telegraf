#!/bin/bash
#Petit script pour voir les varaibles d'env pour InfluxDB
#zf191010.0910

for i in $(env |grep dbflux)
do
    echo " env "$i
done

