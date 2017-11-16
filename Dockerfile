FROM micanzhang/golang-testing:latest

# build protoc
ADD build-protoc.sh build-protoc.sh
RUN /bin/sh build-protoc.sh && rm build-protoc.sh

# golang protobuf plugin
RUN go get -u github.com/golang/protobuf/protoc-gen-go

# install glide
RUN go get -u github.com/Masterminds/glide && rm -rf $GOPATH/src/github.com/Masterminds/glide