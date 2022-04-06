#!/bin/sh
# Apply cluster configs e.g secrets, configmaps and storageclass
sudo microk8s kubectl apply -f /etc/argocd/data-gateway-config.yaml