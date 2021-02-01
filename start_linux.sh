#!/bin/bash

IMAGE=linux/arch/arm64/boot/Image.gz
DTB=m1n1/build/dtb/apple-j274.dtb
INITRD=initramfs/initramfs.cpio.gz

source env.sh

LOGDIR=logs/m1n1
TIMESTAMP=$(date +%s)
LOGFILE=$LOGDIR/linux_$TIMESTAMP.log

mkdir -p $LOGDIR
touch $LOGFILE

python3 m1n1/proxyclient/linux.py $IMAGE $DTB $INITRD | tee $LOGFILE
