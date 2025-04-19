# End-to-End DevOps Pipeline with GitOps on Jenkins

This project demonstrates a complete CI/CD workflow that automates building, testing, and deploying applications using GitOps principles with Jenkins.

## Project Overview

This repository contains all the necessary configurations and code to set up an end-to-end DevOps pipeline with GitOps principles using Jenkins. The pipeline automates the process of building, testing, and deploying applications to Kubernetes clusters.

## Components

- **Jenkins**: CI/CD server for automating builds, tests, and deployments
- **GitOps**: Using ArgoCD for declarative, Git-based delivery to Kubernetes
- **Kubernetes**: Container orchestration platform for application deployment
- **Docker**: Containerization platform for packaging applications
- **Infrastructure as Code**: Kubernetes manifests and Helm charts

## Directory Structure

```
.
├── jenkins/
│   ├── Jenkinsfile                # Main Jenkins pipeline definition
│   └── jenkins-config/            # Jenkins configuration files
├── kubernetes/
│   ├── manifests/                 # Kubernetes YAML manifests
│   └── helm-charts/               # Helm charts for application deployment
├── argocd/
│   └── applications/              # ArgoCD application definitions
├── docker/
│   └── Dockerfile                 # Dockerfile for the application
└── sample-app/                    # Sample application code
    └── src/                       # Source code
```

## Setup Instructions

1. Set up Jenkins server with required plugins
2. Configure Jenkins pipeline using the provided Jenkinsfile
3. Set up ArgoCD in your Kubernetes cluster
4. Configure ArgoCD to watch your Git repository
5. Push changes to trigger the CI/CD pipeline

## Pipeline Workflow

1. **Code Commit**: Developer pushes code to Git repository
2. **CI Pipeline**: Jenkins detects changes, builds and tests the application
3. **Container Build**: Jenkins builds Docker container and pushes to registry
4. **GitOps Update**: Jenkins updates Kubernetes manifests in Git repository
5. **CD with GitOps**: ArgoCD detects changes in manifests and applies them to the cluster

## Prerequisites

- Kubernetes cluster
- Jenkins server
- Docker registry
- Git repository
- ArgoCD installed on Kubernetes cluster

## License

MIT