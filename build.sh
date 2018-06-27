#!/bin/bash

STORM_VERSION="1.0.1.h"

if [ $# -lt 4 ] || [ $# -gt 5  ]; then
        echo "Usage:"
        echo "------"
        echo "build.sh <ECR URL> <PROFILE> <REGION> [<REPO>]"
        echo "build.sh 891435880877.dkr.ecr.us-east-1.amazonaws.com atniECR us-east-1 mirada/logiq/ "
        echo "build.sh 628220405432.dkr.ecr.us-west-2.amazonaws.com izziECR us-west-2 "
        exit;
fi

ECR=$1
PROFILE=$2
REGION=$3
REPO_PREFIX=$4

# trim white spaces
REPO_PREFIX="$(echo $REPO_PREFIX | tr -d '[:space:]')"

if [ -n "$REPO_PREFIX" ]; then
    FULL_ECR_PREFIX="$ECR/$REPO_PREFIX"
else
    FULL_ECR_PREFIX="$ECR"
fi

$(aws ecr get-login --no-include-email --region $REGION --profile $PROFILE)
PROJECTS=( storm-base storm-ui storm-worker storm-nimbus )


for PROJECT in "${PROJECTS[@]}"
do
    NAME="$(echo $PROJECT | cut -d '-' -f 2)"
    REMOTE_NAME=$FULL_ECR_PREFIX/$PROJECT

    docker build -t "$PROJECT" "$NAME"
    docker tag "$PROJECT" "$REMOTE_NAME:$STORM_VERSION"
    docker tag "$PROJECT" "$REMOTE_NAME:latest"
    docker push $REMOTE_NAME:$STORM_VERSION
    docker push $REMOTE_NAME:latest
done

