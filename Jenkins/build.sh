#!/bin/bash

# Copy the new jar to the build location
cd /home/chaitanya/.jenkins/workspace/java-cicd-demo/ && mvn clean install
echo "****************************"
echo "** Building Maven jar ***"
echo "****************************"
