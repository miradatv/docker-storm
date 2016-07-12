#!/bin/sh

VERSION=1.0.1

docker build -t miradatv/storm-base base
docker build -t miradatv/storm-nimbus nimbus
docker build -t miradatv/storm-worker worker
docker build -t miradatv/storm-ui ui
docker tag miradatv/storm-base:latest miradatv/storm-base:$VERSION
docker tag miradatv/storm-nimbus:latest miradatv/storm-nimbus:$VERSION
docker tag miradatv/storm-worker:latest miradatv/storm-worker:$VERSION
docker tag miradatv/storm-ui:latest miradatv/storm-ui:$VERSION
docker push miradatv/storm-base:$VERSION
docker push miradatv/storm-base:latest
docker push miradatv/storm-nimbus:$VERSION
docker push miradatv/storm-nimbus:latest
docker push miradatv/storm-worker:$VERSION
docker push miradatv/storm-worker:latest
docker push miradatv/storm-ui:$VERSION
docker push miradatv/storm-ui:latest

