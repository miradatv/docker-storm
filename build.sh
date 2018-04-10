#!/bin/sh

VERSION=1.0.5

export ECR=606039442951.dkr.ecr.us-east-1.amazonaws.com

docker build -t storm-base base --no-cache
docker build -t storm-nimbus nimbus --no-cache
docker build -t storm-worker worker --no-cache
docker build -t storm-ui ui --no-cache
docker tag storm-base $ECR/storm-base:$VERSION
docker tag storm-nimbus $ECR/storm-nimbus:$VERSION
docker tag storm-worker $ECR/storm-worker:$VERSION
docker tag storm-ui $ECR/storm-ui:$VERSION
docker tag storm-base $ECR/storm-base:latest
docker tag storm-nimbus $ECR/storm-nimbus:latest
docker tag storm-worker $ECR/storm-worker:latest
docker tag storm-ui $ECR/storm-ui:latest
docker push $ECR/storm-base:$VERSION
docker push $ECR/storm-base:latest
docker push $ECR/storm-nimbus:$VERSION
docker push $ECR/storm-nimbus:latest
docker push $ECR/storm-worker:$VERSION
docker push $ECR/storm-worker:latest
docker push $ECR/storm-ui:$VERSION
docker push $ECR/storm-ui:latest

