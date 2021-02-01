#!/bin/bash

source env.sh

LOGDIR=logs/m1n1
TIMESTAMP=$(date +%s)
LOGFILE=$LOGDIR/shell_$TIMESTAMP.log

mkdir -p $LOGDIR
touch $LOGFILE

python3 m1n1/proxyclient/shell.py | tee $LOGFILE
