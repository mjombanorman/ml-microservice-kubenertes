#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t mjomban/mlapp:v1.0.1 .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -p 80:80 mjomban/mlapp:v1.0.1
