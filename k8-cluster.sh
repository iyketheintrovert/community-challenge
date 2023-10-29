#!/bin/bash

# Create EKS Cluster
echo
eksctl create cluster \
    --name devops-project \
    --region us-east-1 \
    --with-oidc \
    --ssh-access \
    --ssh-public-key sage-key

# Get nodes info
kubectl get nodes -o wide

# Create Kubernetes Namespace
kubectl create namespace prod-namespace

# Configure Kuneconfig
aws eks update-kubeconfig --name devops-project --region us-east-1