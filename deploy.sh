#!/bin/bash

# for dir in ./; do
#   echo "Building Images"
#   docker build .
# done

for dir in */k8s/; do
  echo "Applying deployment in $dir"
  kubectl apply -f "$dir"
done