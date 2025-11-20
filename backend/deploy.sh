#!/bin/bash

# Build the Docker image
docker build --platform -t everwearbackendapi:latest .

# Tag the Docker image
docker tag everwearbackendapi:latest personalprojectsregistry.azurecr.io/everwearbackendapi:v1

# Prune unused Docker images
docker image prune -f

# Push the Docker image to Azure Container Registry
docker push personalprojectsregistry.azurecr.io/everwearbackendapi:v1  