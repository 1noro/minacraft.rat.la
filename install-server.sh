#!/bin/bash
# RUN AS ROOT!!
#apt install openjdk-8-jre-headless curl screen nano bash grep git
#apt install openjdk-* curl screen nano bash grep git
apt update
#apt install default-jre curl screen nano bash grep git wget -y
apt install openjdk-11-jre-headless curl screen nano bash grep git wget -y
mkdir -p /opt/minecraft
adduser --system --shell /bin/bash --home /opt/minecraft --group minecraft
cd /opt/minecraft
git clone https://github.com/1noro/minecraft.rat.la.git
cd /opt/minecraft/minecraft.rat.la

# edit link if changes
wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar

cp minecraft@.service /etc/systemd/system/minecraft@.service
chown minecraft:minecraft -R /opt/minecraft #necesario
systemctl enable minecraft@minecraft_rat_la
#systemctl disable minecraft@minesrv
