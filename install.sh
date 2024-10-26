#!/bin/bash
# install.sh

NAMESPACE="radicale"

# Create the namespace if it doesn't exist
kubectl create namespace $NAMESPACE || echo "Namespace $NAMESPACE already exists."

# Apply each YAML file in sequence within the specified namespace
kubectl apply -f pvc.yaml -n $NAMESPACE
kubectl apply -f service.yaml -n $NAMESPACE
kubectl apply -f deployment.yaml -n $NAMESPACE
kubectl apply -f ingress.yaml -n $NAMESPACE

# Add radicale.local to /etc/hosts
if ! grep -q "radicale.local" /etc/hosts; then
  echo "127.0.0.1 radicale.local" | sudo tee -a /etc/hosts
  echo "/etc/hosts updated with radicale.local"
else
  echo "radicale.local already in /etc/hosts"
fi
