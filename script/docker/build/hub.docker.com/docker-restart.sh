#!/bin/bash
set -e

cd "$(dirname "$0")"

source ./config.sh

SSH "true \
	&& export HUB=jnas.local:5000 \
	&& export MONGODB_DATA_VOL_SRC=../../mongodb/.data \
	&& export MONGODB_DATA_VOL_DST=/data/db \
	&& cd /volume1/docker/ComplexBot/build/$HOST \
	&& /usr/local/bin/docker-compose restart \
"