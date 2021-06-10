#!/bin/bash
# monitoring/prometheus/docker_build.sh
export USER_NAME=mzabolotnov
for i in monitoring/prometheus src/ui src/post-py src/comment monitoring/alertmanager; do cd $i; bash docker_build.sh; cd -; done
# src/comment/docker_build.sh
# src/post-py/docker_build.sh
# src/ui/docker_build.sh
docker-compose -f docker/docker-compose.yml up -d
docker-compose -f docker/docker-compose-monitoring.yml up -d
