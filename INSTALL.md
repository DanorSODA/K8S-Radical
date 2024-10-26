# Installation Guide for Radicale Deployment on Kubernetes

This guide provides step-by-step instructions for deploying Radicale to your Kubernetes cluster using the provided resources. The install script will streamline deployment by setting up namespaces, applying resources, and configuring your local host.

## Prerequisites

Ensure you have the following tools installed:

- Docker
- K3s or any Kubernetes cluster setup
- `kubectl` command-line tool with access to the Kubernetes cluster

## Installation Steps

1. **Clone the Repository**:
   Clone this project repository and navigate to the directory.

```sh
git clone https://github.com/DanorSODA/K8S-Radical
cd K8S-Radical
```

2. **Run the Install Script**:

The install.sh script will create a dedicated namespace, apply each required Kubernetes resource, and add radicale.local to your /etc/hosts file for easy access.

````sh
 ./install.sh
 ```

3. **Access Radicale**:

Once deployment is complete, you can access the Radicale application by navigating to http://radicale.local in your web browser (assuming Ingress is set up correctly in your cluster).
````
