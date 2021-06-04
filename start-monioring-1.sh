#!/bin/bash
# monitoring/prometheus/docker_build.sh
for i in monitoring/prometheus src/ui src/post-py src/comment; do cd $i; bash docker_build.sh; cd -; done
# src/comment/docker_build.sh
# src/post-py/docker_build.sh
# src/ui/docker_build.sh
docker-compose -f docker/docker-compose.yml up -d
