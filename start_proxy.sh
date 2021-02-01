#!/bin/bash

source env.sh

LOGDIR=logs/m1n1
TIMESTAMP=$(date +%s)
LOGFILE=$LOGDIR/linux_$TIMESTAMP.log

mkdir -p $LOGDIR
touch $LOGFILE

python3 m1n1/proxyclient/proxy.py | tee $LOGFILE
