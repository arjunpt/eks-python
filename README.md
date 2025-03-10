# EKS Deployment Guide

## **Overview**
This document provides a step-by-step guide for deploying applications on an Amazon EKS (Elastic Kubernetes Service) cluster using CI/CD pipelines.

## **Prerequisites**
Before proceeding, ensure the following:
- AWS CLI installed and configured with the correct IAM permissions.
- kubectl installed and configured to interact with the EKS cluster.
- Helm installed for managing Kubernetes applications.
- Docker installed for building and pushing container images.
- Access to the CI/CD pipeline (Jenkins, GitHub Actions, GitLab CI/CD, etc.).

## **1. Build and Push Docker Image**

1. Build the Docker image:
   ```sh
   docker build -t <your-repo>:<tag> .
   ```
2. Authenticate with the container registry (e.g., Amazon ECR):
   ```sh
   aws ecr get-login-password --region <region> | docker login --username AWS --password-stdin <account-id>.dkr.ecr.<region>.amazonaws.com
   ```
3. Tag and push the image:
   ```sh
   docker tag <your-repo>:<tag> <account-id>.dkr.ecr.<region
