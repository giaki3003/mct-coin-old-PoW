#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-mctpay/mctd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/mctd docker/bin/
cp $BUILD_DIR/src/mct-cli docker/bin/
cp $BUILD_DIR/src/mct-tx docker/bin/
strip docker/bin/mctd
strip docker/bin/mct-cli
strip docker/bin/mct-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
