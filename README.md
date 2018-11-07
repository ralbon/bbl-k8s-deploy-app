# BBL: Deploy an application into Kubernetes
This project allows you to deploy a Kubernetes cluster with GKE and prepare example to deploy an application.

# Prerequisites 
gcloud, kubectl is installed on your latop.
you are connected to your octo google account with gcloud and have access to bogops organization

# Init infrastucture
  $ ./init.sh

# Run application locally
  $ pip install -r requirements.txt
  $ source python-flask/bin/activate
  $ cd app/
  $ gunicorn app:app

# Add basic auth in Ingress

## Create auth file
   $ htpasswd -c auth foo
   New password: <bar>
   New password:
   Re-type new password:
   Adding password for user foo
   
## Create secret from auth file
   $ kubectl create secret generic basic-auth --from-file=auth

## Annotations to add in ingress resources
   nginx.ingress.kubernetes.io/auth-type: basic
   nginx.ingress.kubernetes.io/auth-secret: basic-auth

# Deploy application with Kubectl + envsusbt
  $ cd deploy-kubectl
  $ ./ci-deploy.sh # you can modify variable in script to show different environement

# Deploy applcation with Helm 
  $ helm init
  $ helm install . --name kubernetes-app-helm --values values.yaml

## Update or install chart 

    helm upgrade --install hellokube hellokube-chart-0.1.0.tgz

