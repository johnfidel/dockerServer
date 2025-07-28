#!/bin/bash

killall ebusd
killall ebusd
killall ebusd

cd homeAssistant
docker compose down
docker compose down
cd ..

exit 0
