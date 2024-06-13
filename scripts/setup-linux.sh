#!/bin/bash
# ? Note: Go, Docker, Kubectl are prerequisites 

# Install Kind
go install sigs.k8s.io/kind@v0.23.0
echo "Kind Installed"


# Install KCL
curl -fsSL https://kcl-lang.io/script/install-cli.sh | /bin/bash
echo "KCL Installed"


curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
sudo ./get_helm.sh
sudo rm get_helm.sh
echo "Helm Installed"




