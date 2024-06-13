#!/bin/bash

# deps: create-cluster.sh, setup-linux.sh
kubectl create namespace kafka

helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update

helm install kafka-broker bitnami/kafka --version 29.3.1 --namespace kafka
