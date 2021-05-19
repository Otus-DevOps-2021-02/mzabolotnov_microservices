#!/bin/bash
docker pull mongo:latest
docker build -t mzabolotnov/post:2.0 ./post-py
docker build -t mzabolotnov/comment:2.0 ./comment
docker build -t mzabolotnov/ui:2.0 ./ui
docker network create reddit
docker volume create reddit_db
docker run --rm -d --network=reddit --network-alias=post_db --network-alias=comment_db -v reddit_db:/data/db mongo:latest
docker run --rm -d --network=reddit --network-alias=post mzabolotnov/post:2.0
docker run --rm -d --network=reddit --network-alias=comment mzabolotnov/comment:2.0
docker run --rm -d --network=reddit -p 9292:9292 mzabolotnov/ui:2.0
