#! /bin/bash

export environment=test
export namespace=ral-kubectl
envsubst < deployment-kubernetes-app.yaml | kubectl apply -f -
envsubst < service-kubernetes-app.yaml | kubectl apply -f -
envsubst < ingress-kubernetes-app.yaml | kubectl apply -f -
