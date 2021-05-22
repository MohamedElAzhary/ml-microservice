#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=moazario/mlproject:ml

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlpod --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
sleep 2m
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlpod 8000:80

