#!/bin/bash


IMAGE="java-cicd-demo"

ssh -i $aws_kv ubuntu@ec2-3-6-94-212.ap-south-1.compute.amazonaws.com
docker login -u chaitu465 -p $PASS
docker pull chaitu465/$IMAGE:$BUILD_TAG
echo "done deploying!."
