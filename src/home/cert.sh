#!/bin/bash

certbot certonly \
  --agree-tos \
  --domains $1 \
  --email certbot@charlesstover.com \
  --nginx \
  --rsa-key-size=4096
