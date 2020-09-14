#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# dockerpath=<your docker ID/path>
dockerpath=nisha2305/make_prediction_api

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag make_prediction_api nisha2305/make_prediction_api:v1

# Push image to a docker repository
docker push nisha2305/make_prediction_api:v1