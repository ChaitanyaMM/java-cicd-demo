#!/bin/bash

echo "***************************"
echo "** pushing docker image to jfrog **********"
echo "***************************"


docker login ${server-name}.jfrog.io
