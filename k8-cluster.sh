#!/bin/bash

PROJECT_NAME="hostober-project"
REGION="us-east-1"
NAMESPACE="prod-namespace"
KEY="sage-key"

# Create EKS Cluster
echo
eksctl create cluster \
    --name $PROJECT_NAME \
    --region $REGION \
    --with-oidc \
    --ssh-access \
    --ssh-public-key $KEY

# Get nodes info
kubectl get nodes -o wide

# Create Kubernetes Namespace
kubectl create namespace $NAMESPACE

# Configure Kuneconfig
aws eks update-kubeconfig --name $PROJECT_NAME --region $REGION