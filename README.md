# Part 1: Infrastructure as Code (Terraform Configuration)

## Overview

To Create the needed ressources we have used module definitions and a Main Terraform configuration file orchestrating modules.

## Running the Terraform configuration to deploy infrastructure

To initialize the terraform Code
```
terraform init
```

To apply the current configurations

```
terraform apply -auto-approve
```
## Accessing the deployed application

To access the created ressources click on the link of the output of each other in the lastest lines when the terraform code has been fully and to access the application click  the output link of the loadbalancer

# Part 2: CI/CD Pipeline with GitHub Actions

Go to the .github/workflows/main.yaml file to see the workflow configurations. The line below are an overview on the steps we used in the worflow:

## Steps:

# Checkout repository: 
Fetches the latest code from the repository.
# Set up Google Cloud SDK: 
Configures gcloud CLI with the provided service account key.
# Build Docker image: 
Builds the Docker image using the Dockerfile in the repository.
# Push Docker image to GCR: 
Pushes the built Docker image to Google Container Registry.
# Deploy to Cloud Run: 
Deploys the Docker image to Cloud Run using gcloud run deploy.
