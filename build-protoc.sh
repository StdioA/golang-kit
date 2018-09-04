#!/usr/bin/env sh

set -e
# build protoc
apk add --update autoconf automake libtool curl make g++ unzip
git clone https://github.com/google/protobuf -b 3.6.x --depth 1
cd ./protobuf
git submodule update --init --recursive
./autogen.sh
./configure
make
make check
make install
cd ../ && rm -rf protobuf
