#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=dami/udacity-ml-microservice-api:v1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

export DOCKER_ID_USER="dami"
docker login
docker tag udacity-ml-microservice-api:v1 $DOCKER_ID_USER/udacity-ml-microservice-api:v1

# Step 3:
# Push image to a docker repository
docker push $DOCKER_ID_USER/udacity-ml-microservice-api:v1
