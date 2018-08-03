#!/bin/bash

certbot certonly \
  --agree-tos \
  --domains $1 \
  --email certbot@charlesstover.com \
  --rsa-key-size 4096 \
  --webroot \
  --webroot-path /var/www/letsencrypt
