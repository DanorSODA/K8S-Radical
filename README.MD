# Radicale K3s Deployment

This project deploys Radicale, a scalable calendar application, using Docker and Kubernetes (K3s). The deployment is designed to provide persistent storage and service exposure within a Kubernetes cluster.

## Prerequisites

- Docker
- K3s (or any Kubernetes cluster)
- `kubectl` command-line tool

## Build and Push Docker Image

1. Build the Docker image for Radicale:
   ```bash
   docker build -t <your-dockerhub-username>/radicale:latest .

2.  Push the image to Docker Hub:
    ```bash
    docker push <your-dockerhub-username>/radicale:latest

## Deployment

1. Clone this repository and navigate to the directory.
    ```bash
    git clone https://github.com/DanorSODA/K8S-Radical
    cd K8S-Radical
    ```

2. Apply the Kubernetes resources in the following order:
    ```bash
    kubectl apply -f deployment/pvc.yaml
    ```

    ```bash
    kubectl apply -f deployment/deployment.yaml
    ```
    ```bash
    kubectl apply -f deployment/service.yaml
    ```

    ```bash
    kubectl apply -f deployment/ingress.yaml
    ```

- [Contributing Guide](CONTRIBUTING.md)
- [Task file](TASKS.md)