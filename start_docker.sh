#!/bin/bash
#Petit script pour démarrer tout le binz en foreground dans un container docker
#zf200518.0904

BASH_XTRACEFD="5" && PS4='$LINENO: ' && set -e -v -x

/usr/bin/telegraf --debug -config /etc/telegraf/telegraf.conf -config-directory /etc/telegraf/telegraf.d   > /dev/null 2>&1 &

