# Radicale K3s Deployment

This project deploys Radicale, a scalable calendar application, using Docker and Kubernetes (K3s). The deployment is designed to provide persistent storage, service exposure within a Kubernetes cluster, and redundancy with multiple Radicale replicas.

## Prerequisites

- Docker
- K3s (or any Kubernetes cluster)
- `kubectl` command-line tool

## Docker Image for Deployment

This deployment uses the pre-built Radicale Docker image available on Docker Hub (`danors/radicale:latest`). No local build is necessary for standard use.

## Deployment

1. Clone this repository and navigate to the directory.

   ```bash
   git clone https://github.com/DanorSODA/K8S-Radical
   cd K8S-Radical
   ```

2. Follow the installation instructions in [INSTALL.md](INSTALL.md) to deploy Radicale to your Kubernetes cluster. The install script automates namespace creation, resource deployment, and host configuration for easier access.

## Project Structure

- **Root Directory**:

  - `Dockerfile`: Docker build file for Radicale (for development or custom builds).
  - `.gitignore`: Specifies files and directories to ignore in Git.
  - `CONTRIBUTING.md`: Guidelines for contributing to this project.
  - `INSTALL.md`: Instructions for deploying Radicale using the install script.
  - `install.sh`: Install script to automate Kubernetes resource application and host configuration.
  - `README.md`: Main documentation file for the project.
  - `TASKS.md`: Additional task details and project management information.

- **deployment/** (Kubernetes Resource Files):
  - `deployment/pvc.yaml`: Defines persistent storage for Radicale.
  - `deployment/deployment.yaml`: Deploys Radicale with three replicas for high availability.
  - `deployment/service.yaml`: Exposes Radicale within the Kubernetes cluster.
  - `deployment/ingress.yaml`: Configures external access via Ingress.

## Additional Information

- [Contributing Guide](CONTRIBUTING.md)
- [Task file](TASKS.md)
