#!/bin/bash -eu

docker stop jenkins || true && docker rm -fv jenkins || true

docker run -p 8080:8080 \
  -u root \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /var/jenkins_home:/var/jenkins_home \
  --name jenkins \
  --detach \
  jenkins/jenkins:lts

echo "jenkins is started at port 8080 just now..."
