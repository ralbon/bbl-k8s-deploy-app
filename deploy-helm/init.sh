#! /bin/bash

kubectl create ns ral-helm-dev
kubectl create ns ral-helm-prod
kubectl create secret generic basic-auth --from-file=auth -n ral-helm-dev
kubectl create secret generic basic-auth --from-file=auth -n ral-helm-prod

