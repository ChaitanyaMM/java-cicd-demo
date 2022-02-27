#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="java-cicd-demo"

echo "** Logging in ***"
docker login -u chaitu465 -p $PASS
docker build -t chaitu465/$IMAGE:$BUILD_TAG .
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG chaitu465/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push chaitu465/$IMAGE:$BUILD_TAG
