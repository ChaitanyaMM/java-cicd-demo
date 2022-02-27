#!/bin/bash


IMAGE="java-cicd-demo"

ssh -i $aws_kv ec2-user@ec2-3-6-94-212.ap-south-1.compute.amazonaws.com
mkdir chaitanya2 && cd
docker login -u chaitu465 -p $PASS
docker pull chaitu465/$IMAGE:$BUILD_TAG
echo "done deploying!."
