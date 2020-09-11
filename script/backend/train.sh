#!/bin/bash
set -e

cd "$(dirname "$0")/"

cd ../../MiraiBot/backend/
export PYTHONPATH=$PYTHONPATH:$PWD
cd ./adfilter
python train.py