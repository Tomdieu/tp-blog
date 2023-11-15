#!/bin/bash


for dir in */k8s/; do
  echo "Deleting deployment in $dir"
  kubectl delete -f "$dir"
done
