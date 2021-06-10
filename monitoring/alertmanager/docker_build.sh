#!/bin/bash

export USER_NAME=mzabolotnov
docker build -t $USER_NAME/alertmanager monitoring/alertmanager
