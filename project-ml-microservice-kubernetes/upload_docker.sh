#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="jenniferob12/prj4micro"
# Step 2:  
# Authenticate & tag
docker tag prj4micro $dockerpath
echo "Docker ID and Image: $dockerpath"
docker login
# Step 3:
# Push image to a docker repository
docker push $dockerpath