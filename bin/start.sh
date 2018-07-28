#!/bin/bash

docker run \
  --detach \
  --volume //D/Server/reverse-proxy:/var/log/nginx \
  --name reverse-proxy \
  --network reverse-proxy \
  --publish 80:80 \
  --publish 443:443 \
  --restart always \
  charlesstover/reverse-proxy
