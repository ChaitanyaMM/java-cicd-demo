#!/bin/bash

echo "***************************"
echo "** pushing docker image to jfrog  Artifactory**********"
echo "***************************"


docker login ${jfrog_server_name}.jfrog.io

docker tag d70ea63efeee ${jfrog_server_name}/default-docker-virtual/chaitu465/java-cicd-demo:jenkins-java-cicd-demo-62
docker push ${jfrog_server_name}/default-docker-virtual/chaitu465/java-cicd-demo:jenkins-java-cicd-demo-62
