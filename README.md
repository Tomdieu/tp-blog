# TP BLOG

This is a micro service on a small blog forked from [atemengue (Régis Atemengue)](https://github.com/atemengue/tp-blog)

## Requirements

- Docker
- Kubernetes
- Minikube
- Scaffold (automate deployment)

### How to install

- Docker [Install docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)

- Kubernetes [Install k8s](https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/)

- Minikube [Install Minikube](https://kubernetes.io/fr/docs/tasks/tools/install-minikube/)

- Skaffold

    ```bash
    curl -Lo skaffold https://storage.googleapis.com/skaffold/releases/latest/skaffold-linux-amd64 && \
    sudo install skaffold /usr/local/bin/
    ```

## To build the different images

- Run

    ```bash
    ./build.sh
    ```

## To run the deployment

- Run

    ```bash
    ./deploy.sh
    ```

## To delete the deployment

- Execute

    ```bash
    ./delete.sh
    ```

## To automate deployment with skaffold

- Execute

    ```bash
    ./deploy_all.sh
    ```
