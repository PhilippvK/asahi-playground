#!/bin/bash

LOGFILE=logs/qemu/current.log

PTY=""

while [[ ! -f $LOGFILE ]]
do
  sleep 0.1
done

while [[ ! "$PTY" == "/dev/"* ]]
do
  sleep 0.1
  PTY=$(cat $LOGFILE | grep '/dev/' -m 1 | sed -r 's/.*(\/dev\/.*)\ \(.*/\1/')
done

echo "export M1N1DEVICE=$PTY" > env.sh

echo $PTY
