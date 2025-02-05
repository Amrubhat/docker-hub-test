#!/bin/bash

echo "Docker Image Name: $1"

# Ensure an image name is provided
if [ -z "$1" ]; then
    echo "No Docker image name provided. Exiting."
    exit 1
fi

# Pull the specified Docker image
docker pull "$1"

# Run the container
docker run -d --name my_container "$1"

# Log the output of the container
docker logs my_container > build_log.txt
