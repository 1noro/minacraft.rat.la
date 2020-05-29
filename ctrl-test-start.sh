#!/bin/bash

# EL MÍNIMO DE RAM RECOMENDADO ES DE 3GB (5-8 players)
# (https://minecraft.gamepedia.com/Server/Requirements/Dedicated#Unix_.28Linux.2C_BSD.2C_Mac_OSX.29)
# -Xms1024M alojar una memoria RAM inicail de 1024MBytes en la maquina java
# -Xmx1850M permitir incrementar la memoria de la maquina de java hasta 1850MBytes

# las opciones mostradas abajo son referidas a la configuración del colector de basura de la maquina java
# java -server -Xms5G -Xmx5G -XX:+UseG1GC -XX:+CMSIncrementalPacing -XX:+CMSClassUnloadingEnabled -XX:ParallelGCThreads=2 -XX:MinHeapFreeRatio=5 -XX:MaxHeapFreeRatio=10 -jar server.jar nogui

# java -Xms3993M -Xmx3993M -jar server.jar # con este va bien
java -Xms1024M -Xmx1850M -jar server.jar # 2039MB RAM (3-5 players) (t2.small AWS)
