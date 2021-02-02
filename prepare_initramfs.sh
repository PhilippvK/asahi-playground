#!/bin/bash

DL=http://ftp.us.debian.org/debian/pool/main/b/busybox/busybox-static_1.30.1-6+b1_arm64.deb
DEB=busybox-static_1.30.1-6+b1_arm64.deb
TAR=data.tar

cd initramfs

wget $DL
7z $DEB
7z $TAR
rm $DEB
rm $TAR
tree

cd ..
