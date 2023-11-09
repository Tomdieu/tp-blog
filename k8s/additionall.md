# Kubernetes

To fix proxy error

## Options

1. Option 1

    ```shell
    ### Linux 
    # Set your proxy
    export HTTP_PROXY=http://<proxy hostname:port>
    export HTTPS_PROXY=https://<proxy hostname:port>

    ### Windows
    set HTTP_PROXY=http://<proxy hostname:port>
    set HTTPS_PROXY=https://<proxy hostname:port>

    # Start minikube  
    minikube start
    ```

2. Option 2

    ```shell
    minikube start --image-repository=auto
    ```

3. Option 3

    ```shell
    # Remove old content (minikube context)
    minikube delete

    # Start minikube with docker driver in case you have been using something else
    minikube start --driver=docker
    ```
