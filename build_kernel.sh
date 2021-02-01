#!/bin/bash

cd linux
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make $@
cd -
