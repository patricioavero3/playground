#!/bin/bash

# Get cluster name from terraform output
CLUSTER_NAME=$(terraform output -raw cluster_name)
REGION=$(terraform output -raw region 2>/dev/null || echo "us-east-1")  # Default to us-east-1 if not defined

# Update kubeconfig
aws eks update-kubeconfig --name $CLUSTER_NAME --region $REGION

# Verify configuration
echo -e "\nTesting connection to cluster..."
kubectl get nodes

echo -e "\nKubeconfig has been updated. You can now use kubectl to interact with your EKS cluster."
