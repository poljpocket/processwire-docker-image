#!/usr/bin/env bash

VERSION="master"
TAG="3.0.229"

docker build --build-arg PROCESSWIRE_VERSION=${VERSION} -t poljpocket/processwire-docker:${TAG} .
