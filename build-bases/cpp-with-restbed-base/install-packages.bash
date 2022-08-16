#!/bin/bash

set -x

VERSION="release-1.11.0"


old_pwd="$(pwd)"
mkdir --parents repositories
cd repositories
echo "Clone RESTBED with dependencies"
git clone --recursive https://github.com/corvusoft/restbed.git
mkdir --parents restbed/build
echo "BUILD: Openssl"
cd restbed/dependency/openssl
./config
make
make test
make install
echo "Build RESTBED"
cd ../../build
cmake -DBUILD_SSL=NO -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_INSTALL_PREFIX=/usr/local ..
make install
make test
cd "${old_pwd}"
rm -rf ./*
