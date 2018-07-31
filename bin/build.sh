#!/bin/bash

docker build --file Dockerfile --tag charlesstover/reverse-proxy .

docker rmi $(docker images --filter dangling=true --no-trunc --quiet)
