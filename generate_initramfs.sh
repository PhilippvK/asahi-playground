#!/bin/bash

cd initramfs

gen_init_cpio=../linux/usr/gen_init_cpio

$gen_init_cpio initramfs.list | gzip -c > initramfs.cpio.gz

SIZE=$(du -h initramfs.cpio.gz)
echo "Initramfs size: $SIZE"

cd ..
