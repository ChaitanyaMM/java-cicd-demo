#!/bin/bash

docker login -u ricardoandre97 -p $PASS
cd ~/maven && docker-compose up -d
