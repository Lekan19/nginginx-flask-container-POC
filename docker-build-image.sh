#!/bin/bash

build() {
    config=$1
    imagename=$2
    docker build -f "$config" . -t "${imagename}"
}

pushd app
build Dockerfile adhoc/app
popd
pushd nginx
build Dockerfile adhoc/nginx
popd