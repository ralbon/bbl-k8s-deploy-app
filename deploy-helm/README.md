# Steps

# install with values-dev.yaml
$ helm install . --name kubernetes-app-helm --values values-dev.yaml --namespace ral-helm-dev

# Modify values-dev and install
$ helm install . --name kubernetes-app-helm --values values-dev.yaml --namespace ral-helm-dev
# you should have error. Unicity of chart name

# You have to use upgrade --install as equivalent of apply 
$ helm upgrade --install kubernetes-app-helm . --values values-dev.yaml --namespace ral-helm-dev

# No idempotence information. No information : changed, not changed..

# And now I want to deploy with values-prod.yaml in prod env
helm install . --name kubernetes-app-helm --values values-prod.yaml --namespace ral-helm-prod
# Error , unicity of release name

$ helm upgrade --install kubernetes-app-helm-prod . --values values-prod.yaml --namespace ral-helm-prod
# It works, my release has been updated if I check revision


# Take away
No information about return code (idempotency)
Unicity of chat implies to have a chart for dev, prod...
