#!/bin/bash
yc compute instance create  --name kuber2 \
--zone ru-central1-a  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
--create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=40,type=network-ssd \
--ssh-key ~/.ssh/appuser.pub  --memory=4  --cores=4

 docker-machine create \
 --driver generic \
 --generic-ip-address=178.154.203.66 \
 --generic-ssh-user yc-user \
 --generic-ssh-key ~/.ssh/appuser \
 docker-host
