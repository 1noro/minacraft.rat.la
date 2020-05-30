#!/bin/bash
# RUN AS ROOT
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

iptables -I INPUT -p tcp --dport 28865 -j ACCEPT -m comment --comment "minecraft.rat.la port"
iptables -I INPUT -p tcp --dport 28875 -j ACCEPT -m comment --comment "minecraft.rat.la rcon"
iptables -I INPUT -p tcp --dport 28885 -j ACCEPT -m comment --comment "minecraft.rat.la query"

# accept all incomming traffic
# iptables -P INPUT ACCEPT
