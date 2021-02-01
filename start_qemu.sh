#!/bin/bash

LOGDIR=logs/qemu
TIMESTAMP=$(date +%s)
LOGFILE=$LOGDIR/qemu_$TIMESTAMP.log

mkdir -p $LOGDIR
touch $LOGFILE
test -L $LOGDIR/current.log && rm $LOGDIR/current.log
ln -s qemu_$TIMESTAMP.log $LOGDIR/current.log

qemu/build/qemu-system-aarch64 -machine apple-m1 -nographic -serial pty -bios m1n1/build/m1n1.macho | tee $LOGFILE

