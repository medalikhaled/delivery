# Create Kind cluster
kind create cluster --name deliverytn-sandbox



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
