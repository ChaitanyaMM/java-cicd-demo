#!/bin/bash

echo "***************************"
echo "** pushing docker image to jfrog  Artifactory**********"
echo "***************************"


docker login ${jfrog_server_name}.jfrog.io -u $JFROG_USERNAME -p $JFROG_PASS

docker tag 7f80a17b7388 ${jfrog_server_name}/default-docker-virtual/chaitu465/java-cicd-demo:jenkins-java-cicd-demo-57
docker push ${jfrog_server_name}/default-docker-virtual/chaitu465/java-cicd-demo:jenkins-java-cicd-demo-57

echo "pushed image to artifactory ${jfrog_server_name}."