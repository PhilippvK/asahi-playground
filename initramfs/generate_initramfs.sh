#!/bin/bash

cd $(dirname $0)

gen_init_cpio=../linux/usr/gen_init_cpio

$gen_init_cpio initramfs.list | gzip -c > initramfs.cpio.gz
