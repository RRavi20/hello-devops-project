# Simple DevOps Pipeline Project

This project demonstrates a complete CI/CD and Infrastructure-as-Code (IaC) lifecycle.

## Tech Stack Used:
* **Frontend:** HTML5
* **Containerization:** Docker
* **CI/CD:** GitHub Actions
* **IaC:** Terraform
* **Orchestration:** Kubernetes (Kubeadm)

## How it Works:
1. Code is pushed to GitHub.
2. **GitHub Actions** builds a Docker image and pushes it to **Docker Hub**.
3. **Terraform** manages the container state.
4. **Kubernetes** deploys the application with 2 replicas for high availability.