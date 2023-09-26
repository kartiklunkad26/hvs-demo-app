# PreRequisites
 1. Make sure Docker Daemon is running
 2. HCP Account 
 3. HCP Service Principal with Viewer Permissions
 4. git
 5. kind
 6. kubectl

# Install Vault Secrets Operator

1. Create a Kubernetes cluster. 
~~~
kind create cluster --name vault-secrets-operator
~~~

2. Install the Vault Secrets Operator

~~~
helm repo add hashicorp https://helm.releases.hashicorp.com
helm repo update
helm install vault-secrets-operator hashicorp/vault-secrets-operator --version 0.3.0-rc.1 -n vault-secrets-operator-system --create-namespace ## will be updated once 0.3.0 is released
~~~

3. [Optional] Create a specific namespace to use

~~~
kubectl create namespace uber-api-dev
~~~

4. Build & deploy the payments-api (for now using an independent Kubernetes Secret)

5. Create the Kubernetes Secret for your HCP Service Principal

6. Configure VSO to fetch secrets for your app 

~~~
kubectl apply -f hvs-vso.yaml
~~~