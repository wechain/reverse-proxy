#!/bin/sh

certbot renew --post-hook "nginx -s reload"
