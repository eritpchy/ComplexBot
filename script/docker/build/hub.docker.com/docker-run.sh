#!/bin/bash
set -e

cd "$(dirname "$0")"

source ./config.sh
export HUB=eritpchy
../localhost/docker-run.sh