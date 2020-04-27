#!/usr/bin/env sh

set -e
# build protoc
# https://github.com/protocolbuffers/protobuf/blob/master/src/README.md
apt-get update
apt-get install -y autoconf automake libtool curl make g++ unzip

VERSION=3.11.4
PROTOC_ZIP=protoc-$VERSION-linux-x86_64.zip
curl -OL https://github.com/google/protobuf/releases/download/v$VERSION/$PROTOC_ZIP
unzip -o $PROTOC_ZIP -d /usr/local bin/protoc
unzip -o $PROTOC_ZIP -d /usr/local include/*
rm -f $PROTOC_ZIP
protoc --version
