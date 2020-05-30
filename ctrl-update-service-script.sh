#!/bin/bash
# RUN AS ROOT
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
fi

systemctl disable minecraft@minecraft.rat.la
systemctl enable minecraft@minecraft.rat.la
systemctl restart minecraft@minecraft.rat.la
