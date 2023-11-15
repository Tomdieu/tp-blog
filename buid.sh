#!/bin/bash


for dir in */k8s/; do
  if [ -f "$dir/docker-compose.yaml" ]; then
    echo "Running docker-compose build in $dir"
    docker compose -f "$dir/docker-compose.yaml" build
  fi
done
