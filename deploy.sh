#!/usr/bin/env bash
docker build -t gs-rest-service-10206 .
docker rm -f gs-rest-service-10206 &> /dev/null || true
docker run \
   -d --name gs-rest-service-10206 \
   -p 10206:8080 \
   gs-rest-service-10206
