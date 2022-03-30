#!/bin/sh
# Install argocd in k8s cluster

sudo microk8s kubectl create namespace argocd
sudo microk8s kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
sudo microk8s kubectl apply -f /etc/argocd/data-gateway-config.yaml