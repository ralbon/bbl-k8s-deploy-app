#! /bin/bash

kubectl create ns ral-ansible-dev
kubectl create ns ral-ansible-prod
kubectl create secret generic basic-auth --from-file=auth -n ral-ansible-dev
kubectl create secret generic basic-auth --from-file=auth -n ral-ansible-prod

