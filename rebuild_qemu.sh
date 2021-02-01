#!/bin/bash

#BRANCH=?

cd qemu
git checkout $BRANCH
cd build
ninja
cd ../..
