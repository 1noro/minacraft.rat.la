#!/bin/bash
# RUN AS ROOT
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

cp server.properties.template server.properties
chown minecraft:minecraft server.properties

systemctl restart minecraft@minecraft.rat.la
