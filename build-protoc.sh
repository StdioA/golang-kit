#!/usr/bin/env sh

set -e
# build protoc
apk add --update autoconf automake libtool curl make g++ unzip
git clone https://github.com/google/protobuf -b 3.4.x --depth 1
cd ./protobuf
./autogen.sh
./configure
make
make check
make install
cd ../ && rm -rf protobuf
