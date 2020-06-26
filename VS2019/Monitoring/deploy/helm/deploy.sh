#!/bin/bash

set -euxo pipefail

# Make sure the secret exists in the namespace
# kubectl create namespace monitoring
# kubectl create secret generic secret-appsettings --from-file=</path/to/appsettings.secrets.json> --namespace monitoring

helm upgrade --install \
    --create-namespace \
    --namespace monitoring \
    --wait \
    monitoring \
    ./monitoring

