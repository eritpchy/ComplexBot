#!/bin/bash
set -e

cd "$(dirname "$0")"

rsync -avrps ../../../../MiraiBot/build/libs/KMiraiBot-*-all.jar ../../env/files/KMiraiBot.jar
rsync -avrps ../../../../MiraiBot/config/config/complexbot.yml ../../env/files/complexbot.yml
rsync -avrps ../../../../MiraiBot/config/config/system.yml ../../env/files/system.yml

rsync -avrps -d ../../../../MiraiBot/backend/* ../../python/files/backend/

docker-compose build --parallel  
rm -f ../../env/files/KMiraiBot.jar
