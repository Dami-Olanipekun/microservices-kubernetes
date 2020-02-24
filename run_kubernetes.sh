#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dami/udacity-ml-microservice-api:v1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-ml-microservice-api --image=dami/udacity-ml-microservice-api:v1 --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
echo "sleeping for 10 seconds while waiting for pod to come up"
sleep 10
kubectl port-forward deployment/udacity-ml-microservice-api 8080:80
kubectl logs --selector app=udacity-ml-microservice-api
