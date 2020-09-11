#!/bin/bash
set -e

cd "$(dirname "$0")"

export HUB=eritpchy
../localhost/docker-build.sh
docker-compose push