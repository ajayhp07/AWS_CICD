#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull ajju121/simple-python-app

# Run the Docker image as a container
docker run -d -p 5001:5000 ajju121/simple-python-app
