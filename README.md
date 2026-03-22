# Smart Loss Control Monorepo

Smart Loss Control is a multi-service inventory reconciliation platform built for retail SMEs. This monorepo combines the frontend, backend, infrastructure, and deployment resources required to build, test, and deploy the application from a single repository.

## Overview

The project is designed to support inventory tracking, reconciliation, and loss monitoring workflows for retail operations. The codebase includes:

- React frontend application
- Node.js / Express backend API
- PostgreSQL database
- Docker containerization
- Kubernetes deployment files
- Terraform infrastructure for AWS EKS
- CI/CD automation for build and deployment


## Repository Structure
smart-loss-control-monorepo/
- ├── .github/workflows/
- ├── backend/
- ├── frontend/
- ├── eks-terraform/
- ├── kubernetes-files/
- ├── docker-compose.yml
- ├── sync.sh
- └── README.md


## Architecture

The system consists of:

- **Frontend:** React application
- **Backend:** Express API
- **Database:** PostgreSQL
- **Infrastructure:** AWS EKS provisioned with Terraform
- **Deployment:** Kubernetes manifests
- **Containerization:** Docker
- **Automation:** CI/CD pipeline for build and deployment

## Tech Stack

### Frontend
- React
- Vite
- React Router
- Zustand
- Recharts

### Backend
- Node.js
- Express
- PostgreSQL
- JWT
- Bcrypt
- Swagger

### DevOps / Infrastructure
- Git
- Git Subtree
- Docker
- Docker Compose
- Jenkins / CI/CD
- Terraform
- AWS EKS
- Kubernetes

## Monorepo Management

The frontend and backend were combined into this repository using Git subtree so both applications could be managed and deployed from one repository.

The `sync.sh` script is used to pull updates from the frontend and backend repositories into the monorepo.

## Local Development

### Setup
Clone the repository:
git clone https://github.com/EseVic/smart-loss-control-monorepo

### Start backend:
- cd backend
- npm install
- npm run dev

### Start frontend:
- cd frontend
- npm install
- npm run dev


## Docker

Dockerfiles are provided for frontend and backend services, along with docker-compose for local multi-service setup.

## Infrastructure and Deployment

Infrastructure resources are defined in `eks-terraform/` for AWS networking and EKS cluster provisioning.

Deployment files are defined in `kubernetes-files/` for frontend and backend services.

## CI/CD

The project includes CI/CD automation for:

- Building application images
- Pushing images to registry
- Deploying services to Kubernetes
- Managing infrastructure updates

## Author

Victoria Iria (EseVic)