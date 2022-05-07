#!/bin/bash

echo "***********************"
echo "* Construyendo el jar *"
echo "***********************"

PROJ=/opt/data/docker/images/jenkinscicd/jenkins_home/workspace/
docker run --rm -v /root/.m2:/root/.m2 -v /opt/data/docker/images/jenkinscicd/jenkins_home/workspace/java-app/:/app -w /app maven:3-alpine "$@"
