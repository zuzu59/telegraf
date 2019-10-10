#!/bin/bash
#Petit script pour démarrer tout le binz en foreground dans un container docker
#zf191010.0903

/usr/bin/telegraf --debug -config /etc/telegraf/telegraf.conf -config-directory /etc/telegraf/telegraf.d

