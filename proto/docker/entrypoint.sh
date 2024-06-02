#!/bin/bash

mkdir -p generated

protoc --proto_path=defs \
 defs/"$SERVICE"/*.proto \
 --go_out=:generated \
 --go-grpc_out=:generated \
 --plugin=$(go env GOPATH)/bin/protoc-gen-go-grpc \
 --plugin=$(go env GOPATH)/bin/protoc-gen-openapiv2 \
 --openapiv2_out generated
