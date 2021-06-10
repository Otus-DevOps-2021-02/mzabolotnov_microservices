#!/bin/bash

export USER_NAME=mzabolotnov
#cd monitoring/prometheus
docker build -t $USER_NAME/prometheus .
#cd -
