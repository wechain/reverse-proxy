#!/bin/bash

docker run \
  --detach \
  --volume //O/OneDrive/Server/var/log/reverse-proxy:/var/log/nginx \
  --volume //O/OneDrive/Server/etc/letsencrypt:/etc/letsencrypt \
  --volume //O/OneDrive/Server/etc/nginx/conf.d:/etc/nginx/conf.d \
  --volume //O/OneDrive/Server/etc/openssl:/etc/openssl \
  --name reverse-proxy \
  --network reverse-proxy \
  --publish 80:80 \
  --publish 443:443 \
  --restart always \
  charlesstover/reverse-proxy
