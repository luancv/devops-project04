#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=luancv/project04

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run project04 --image=$dockerpath --port=8080

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward project04 8080:80
