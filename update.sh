#!/bin/bash
# 
# Builds a Docker image and pushes to an AWS ECR repository

set -e

source_path="$1" # 1st argument from command line
repository_url="$2" # 2nd argument from command line
tag="latest" #docker tag

# splits string using '.' and picks 4th item
region="$(echo "$repository_url" | cut -d. -f4)" 

# splits string using '/' and picks 2nd item
image_name="$(echo "$repository_url" | cut -d/ -f2)" 

# builds docker image
(cd "$source_path" && docker build -t "$image_name" .) 

# login to ecr
$(aws ecr get-login --no-include-email --region "$region") 

# tag image
docker tag "$image_name" "$repository_url":"$tag"

# push image
docker push "$repository_url":"$tag" 

# Ready message for user
echo Application is Ready!!!
