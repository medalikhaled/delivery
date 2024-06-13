#!/bin/bash
# deps: setup-linux.sh

#? check the kind config for the name
CLUSTER_NAME="deliverytn-sandbox" 

# Create Kind Sandbox cluster
kind create cluster --config ../infra/k8s/kind-cluster.yml
echo "Sandbox Cluster setup complete"

# Use The cluster with:
kubectl cluster-info --context $CLUSTER_NAME


# # Install Crossplane
# kubectl create namespace crossplane-system
# kubectl apply --filename https://raw.githubusercontent.com/crossplane/crossplane/release-1.7/install.yaml

# # Install ArgoCD
# kubectl create namespace argocd
# kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

# # Install Prometheus and Grafana
# kubectl apply -f https://github.com/prometheus-operator/kube-prometheus/blob/main/manifests/setup/
# kubectl apply -f https://github.com/prometheus-operator/kube-prometheus/blob/main/manifests/


echo "Cluster setup complete"
