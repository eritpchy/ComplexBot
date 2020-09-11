#!/bin/sh
SHELL_PATH=$0
ROOT_PATH=`dirname $SHELL_PATH`
HOST=`basename $ROOT_PATH`
echo HOST: $HOST

function SSH {
	ssh root@$HOST $@
}