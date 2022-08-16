#!/bin/bash

GOOGLETEST_VERSION="release-1.11.0"

apt-get update
apt-get install -y build-essential git cmake autoconf libtool pkg-config


old_pwd="$(pwd)"
mkdir repositories
cd repositories
git clone https://github.com/google/googletest.git -b ${GOOGLETEST_VERSION}
mkdir googletest/build
cd googletest/build
cmake ..
make install
cd "${old_pwd}"
rm -rf googletest
