#!/bin/bash

PROJECT_NAME="hostober-project"

# Delete EKS Cluster
eksctl delete cluster --name $PROJECT_NAME