#!/bin/bash -eu

docker rm -fv jenkins

docker run -p 8080:8080 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --name jenkins \
  --detach \
  jenkins/jenkins:lts
