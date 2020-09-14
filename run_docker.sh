#!/usr/bin/env bash
docker build --tag=make_prediction_api .
docker image ls
docker run -p 8000:8080 make_prediction_api

