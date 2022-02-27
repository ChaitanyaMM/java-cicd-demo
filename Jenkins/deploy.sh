#!/bin/bash


IMAGE="java-cicd-demo"

ssh -i $aws_kv ubuntu@ec2-3-6-94-212.ap-south-1.compute.amazonaws.com
echo 'cloning app ! ...'
cd chaitanya && git clone https://github.com/ChaitanyaMM/java-cicd-demo-app.git
echo "hello" >> chaitanya/file.txt
docker login -u chaitu465 -p $PASS
docker pull chaitu465/$IMAGE:$BUILD_TAG
echo "done deploying!."
