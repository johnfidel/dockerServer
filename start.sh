#!/bin/bash

cd homeAssistant
docker compose up -d
cd ..

sleep 5

sudo /usr/bin/ebusd -d 192.168.1.4:5555 -p 8888 --mqtthost localhost --mqttport 1883 --mqttint=/etc/ebusd/mqtt-hassio.cfg --mqttjson --mqtttopic=ebusd --log=all:notice --configpath=/home/tv/dockerContainers/ebusd/ebusd-configuration/ebusd-2.1.x/de --scanconfig

exit 0
