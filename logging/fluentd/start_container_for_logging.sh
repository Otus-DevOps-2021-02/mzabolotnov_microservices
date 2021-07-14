#!/bin/bash
 export USER_NAME='mzabolotnov'
 export USERNAME='mzabolotnov'
cd ../../src/ui && bash docker_build.sh && docker push $USER_NAME/ui
cd ../../post-py && bash docker_build.sh && docker push $USER_NAME/post
cd ../../comment && bash docker_build.sh && docker push $USER_NAME/comment
cd ../../logging/fluentd && docker build -t $USER_NAME/fluentd .

docker pull mongo:latest
docker network create reddit
docker volume create reddit_db
docker network create back_net --subnet=10.0.2.0/24
docker network create front_net --subnet=10.0.1.0/24
docker run --rm -d --network=back_net --network-alias=post_db --network-alias=comment_db --name mongo_db -v reddit_db:/data/db mongo:latest
docker run --rm -d --network=back_net --network-alias=post --name post mzabolotnov/post:2.0
docker run --rm -d --network=back_net --network-alias=comment --name comment mzabolotnov/comment:2.0
docker run --rm -d --network=front_net --name ui -p 9292:9292 mzabolotnov/ui:2.0
docker network connect front_net post
docker network connect front_net comment
# docker run -d --network=front_net -p 9292:9292 --name ui  <your-dockerhub-login>/ui:1.0
# docker run -d --network=back_net --name comment  <your-dockerhub-login>/comment:1.0
# docker run -d --network=back_net --name post  <your-dockerhub-login>/post:1.0
# docker run -d --network=back_net --name mongo_db --network-alias=post_db --network-alias=comment_db mongo:latest
