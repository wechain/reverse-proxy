#!/bin/bash

docker build --file Dockerfile --tag wechain/reverse-proxy .

docker rmi $(docker images --filter dangling=true --no-trunc --quiet)
