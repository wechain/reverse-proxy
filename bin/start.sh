#!/bin/bash

docker run \
  --detach \
  --name reverse-proxy \
  --network reverse-proxy \
  --publish 80:80 \
  --publish 443:443 \
  --restart always \
  --volume //d/Server/var/log/reverse-proxy:/var/log/nginx \
  --volume //d/Server/etc/letsencrypt:/etc/letsencrypt \
  --volume //d/Server/etc/nginx/conf.d:/etc/nginx/conf.d \
  --volume //d/Server/etc/openssl:/etc/openssl \
  charlesstover/reverse-proxy
