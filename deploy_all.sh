#!/bin/bash

for app_folder in */; do
    if [ -d "$app_folder" ]; then
        echo "Deploying $app_folder..."
        (cd "$app_folder" && scaffold dev)
        echo "Deployment for $app_folder completed."
        echo
    fi
done
