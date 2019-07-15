#!/usr/bin/env sh

set -e
# build protoc
# https://github.com/protocolbuffers/protobuf/blob/master/src/README.md
apt-get update
apt-get install -y autoconf automake libtool curl make g++ unzip
git clone https://github.com/google/protobuf -b 3.6.x --depth 1
cd ./protobuf
git submodule update --init --recursive
./autogen.sh
./configure
make
make check
make install
ldconfig
protoc --version
cd ../ && rm -rf protobuf
