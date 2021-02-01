#!/bin/bash

#BRANCH=?

cd qemu
git checkout $BRANCH
mkdir -p build
cd build
../configure
make
cd ../..
