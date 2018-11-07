#! /bin/bash

kubectl create ns ral-kubectl
kubectl create secret generic basic-auth --from-file=auth -n ral-kubectl
