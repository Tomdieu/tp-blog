# RUN Kubernetest Dashboard

## Steps to use

1. Install the Kubernetes Dashboard:

    ```shell
    kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
    ```

2. Create `yaml` file `admin-user.yaml` with this content

    ```yaml
    apiVersion: v1
    kind: ServiceAccount
    metadata:
      name: admin-user
      namespace: kubernetes-dashboard
   
    ---
   
    apiVersion: rbac.authorization.k8s.io/v1
    kind: ClusterRoleBinding
    metadata:
      name: admin-user
    roleRef:
      apiGroup: rbac.authorization.k8s.io
      kind: ClusterRole
      name: cluster-admin
    subjects:
    - kind: ServiceAccount
      name: admin-user
      namespace: kubernetes-dashboard
    ```

3. Run

    ```shell
    kubectl apply -f .
    ```

4. Get a token

      ```shell
      kubectl -n kubernetes-dashboard create token admin-user
      ```

5. Run

      ```shell
      kubectl proxy
      ```

6. Visit <http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/>

7. Paste the token into the login screen and you can then sign in to the dashboard.
