#!/bin/bash

# go to the workspace and start execting the process
echo "****************************"
echo "** Building Maven jar ***"
echo "****************************"

cd /home/chaitanya/.jenkins/workspace/java-cicd-demo/ && mvn clean install

echo "****************************"
echo "**Running Maven jar ***"
echo "****************************"
# cd  target && java -jar java-cicd-demo-0.0.1-SNAPSHOT.jar
