#!/bin/bash

GOOGLETEST_VERSION="v1.14.0"

apt-get update
apt-get install -y cmake

old_pwd="$(pwd)"
mkdir repositories
cd repositories
git clone https://github.com/google/googletest.git -b ${GOOGLETEST_VERSION}
mkdir googletest/build
cd googletest/build
cmake ..
make install

cd ..

git clone https://github.com/nlohmann/json.git
cd json
cmake .
make install

cd "${old_pwd}"
rm -rf repositories
