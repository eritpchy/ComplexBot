#!/bin/bash
set -e

cd "$(dirname "$0")"
docker-compose down --remove-orphans
docker-compose up -d --force-recreate --no-build
docker-compose logs -f