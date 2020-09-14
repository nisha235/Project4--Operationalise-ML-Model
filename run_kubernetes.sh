#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=nisha2305/make_prediction_api:v1

# Run the Docker Hub container with kubernetes
kubectl run housepredictionapi --generator=run-pod/v1 --image=$dockerpath --port=8080 --labels app=housepredictionapi

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward housepredictionapi 8000:8080

