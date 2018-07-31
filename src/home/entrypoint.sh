#!/bin/sh

openssl dhparam -dsaparam -out /etc/openssl/dhparam.pem 4096
nginx
/usr/sbin/crond -f -l 8
