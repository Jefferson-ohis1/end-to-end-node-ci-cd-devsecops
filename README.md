# End-to-End Node.js CI/CD DevSecOps Pipeline on AWS

> A comprehensive portfolio project demonstrating modern DevOps and DevSecOps practices using Node.js, Docker, Terraform, Jenkins, AWS, Kubernetes, Prometheus, and Grafana.


---
## Table of Contents

1. [Project Overview](#project-overview)
2. [Project Objectives](#project-objectives)
3. [Solution Architecture](#solution-architecture)
4. [Technology Stack](#technology-stack)
5. [Project Structure](#project-structure)
6. [Repository Structure](#repository-structure)
7. [Project Workflow](#project-workflow)
8. [Project Phases](#project-phases)
9. [Documentation](#documentation)
10. [Screenshots](#screenshots)
11. [Prerequisites](#prerequisites)
12. [Running the Project Locally](#running-the-project-locally)
13. [Future CI/CD Pipeline](#future-cicd-pipeline)
14. [Future Enhancements](#future-enhancements)
15. [Author](#author)

---


## Project Overview

This repository demonstrates the design, implementation, and deployment of a complete end-to-end DevSecOps pipeline for a containerized Node.js monitoring application on Amazon Web Services (AWS).

The project combines modern DevOps and DevSecOps practices by integrating Infrastructure as Code (Terraform), containerization (Docker), continuous integration and continuous deployment (Jenkins), automated security scanning (SonarCloud, Snyk, Trivy, and OWASP ZAP), container orchestration (Amazon Elastic Kubernetes Service), and application monitoring (Prometheus and Grafana).

Rather than focusing on a single technology, this project demonstrates how multiple industry-standard tools work together to automate the complete software delivery lifecycle—from application development to deployment and monitoring.

This repository is being developed incrementally, with each phase documented in detail to demonstrate both the implementation process and the underlying engineering concepts.

---

## Project Objectives

The objectives of this project are to:

- Develop a production-ready Node.js monitoring application.
- Containerize the application using Docker.
- Provision AWS infrastructure using Terraform.
- Build an automated Jenkins CI/CD pipeline.
- Integrate DevSecOps security tools into the deployment workflow.
- Deploy the application to Amazon Elastic Kubernetes Service (EKS).
- Implement application monitoring using Prometheus and Grafana.
- Demonstrate Infrastructure as Code (IaC), CI/CD, Kubernetes, and DevSecOps best practices.

---

## Solution Architecture (Planned)

The complete solution architecture will be added as the infrastructure and deployment phases are completed.

The final architecture will include:

- GitHub
- Jenkins
- SonarCloud (Static Application Security Testing - SAST)
- Snyk (Software Composition Analysis - SCA)
- Docker
- Trivy (Container Vulnerability Scanning)
- OWASP ZAP (Dynamic Application Security Testing - DAST)
- Amazon Elastic Container Registry (ECR)
- Amazon Elastic Kubernetes Service (EKS)
- Prometheus
- Grafana
- AWS Infrastructure provisioned using Terraform

---

## AWS Infrastructure Provisioned

The infrastructure for this project has been provisioned using Terraform and includes:

- Amazon VPC
- Public and Private Subnets
- Internet Gateway
- Route Tables
- NAT Gateway
- Security Groups
- IAM Roles and Policies
- Amazon Elastic Container Registry (ECR)
- Amazon Elastic Kubernetes Service (EKS)

---

## Technology Stack

| Category | Technologies |
|-----------|--------------|
| Programming Language | Node.js |
| Backend Framework | Express.js |
| Monitoring Library | Prometheus Client |
| Unit Testing | Jest, Supertest |
| Containerization | Docker |
| Infrastructure as Code | Terraform |
| Cloud Provider | Amazon Web Services (AWS) |
| Container Registry | Amazon Elastic Container Registry (Amazon ECR) |
| Container Orchestration | Amazon Elastic Kubernetes Service (Amazon EKS) |
| Continuous Integration | Jenkins *(Upcoming)* |
| Static Code Analysis | SonarCloud *(Upcoming)* |
| Dependency Scanning | Snyk *(Upcoming)* |
| Container Security | Trivy *(Upcoming)* |
| Dynamic Security Testing | OWASP ZAP *(Upcoming)* |
| Monitoring | Prometheus *(Upcoming)* |
| Visualization | Grafana *(Upcoming)* |
| Version Control | Git |
| Repository Hosting | GitHub |

---

## Project Structure

The project consists of four major components:

- Application source code
- Infrastructure as Code
- Project documentation
- Supporting screenshots

As additional phases are completed, the project will continue to expand with Kubernetes manifests, Jenkins pipeline definitions, monitoring resources, and DevSecOps automation.

---

## Repository Structure

```text
end-to-end-node-ci-cd-devsecops/
├── app/
│   ├── app.js
│   ├── app.test.js
│   ├── server.js
│   ├── Dockerfile
│   ├── package.json
│   └── package-lock.json
│
├── docs/
│   ├── 01-project-initialization.md
│   ├── 02-application-refactoring.md
│   ├── 03-unit-testing.md
│   ├── 04-containerization.md
│   └── 05-terraform-infrastructure.md
│
├── infra/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── versions.tf
│   ├── vpc.tf
│   ├── security-groups.tf
│   ├── iam.tf
│   ├── ecr.tf
│   ├── eks.tf
│   └── outputs.tf
│
├── screenshots/
│   ├── 01-project-initialization/
│   ├── 02-application-refactoring/
│   ├── 03-unit-testing/
│   ├── 04-containerization/
│   └── 05-terraform-infrastructure/
│
├── .gitignore
└── README.md
```

---

## Project Workflow

The project is being developed using an incremental engineering approach.

```text
Application Development
            │
            ▼
Application Refactoring
            │
            ▼
Unit Testing
            │
            ▼
Docker Containerization
            │
            ▼
Terraform Infrastructure
            │
            ▼
Jenkins CI/CD Pipeline (Upcoming)
            │
            ▼
DevSecOps Security Scanning (Upcoming)
            │
            ▼
Amazon EKS Deployment (Upcoming)
            │
            ▼
Prometheus Monitoring (Upcoming)
            │
            ▼
Grafana Dashboards (Upcoming)
```

---

## Project Phases

| Phase | Status |
|---------|--------|
| Phase 1 – Project Initialization | ✅ Completed |
| Phase 2 – Application Refactoring | ✅ Completed |
| Phase 3 – Unit Testing | ✅ Completed |
| Phase 4 – Docker Containerization | ✅ Completed |
| Phase 5 – AWS Infrastructure with Terraform | ✅ Completed |
| Phase 6 – Jenkins CI/CD & DevSecOps Pipeline | 🚧 Planned |
| Phase 7 – Amazon EKS Deployment | 🚧 Planned |
| Phase 8 – Prometheus & Grafana Monitoring | 🚧 Planned |

---

## Documentation

Detailed documentation for each implementation phase is available in the `docs/` directory.

| Document | Description |
|----------|-------------|
| `01-project-initialization.md` | Project setup and initial application development |
| `02-application-refactoring.md` | Application restructuring and improvements |
| `03-unit-testing.md` | Unit testing using Jest and Supertest |
| `04-containerization.md` | Docker containerization and local verification |
| `05-terraform-infrastructure.md` | AWS architecture design and Terraform infrastructure provisioning |

Additional documentation will be added as new phases are completed.

---

## Screenshots

Project screenshots are organized by implementation phase.

```text
screenshots/
├── 01-project-initialization/
├── 02-application-refactoring
├── 03-unit-testing/
└── 04-containerization/
└── 05-terraform-infrastructure/
```

Additional screenshots for Jenkins, Amazon EKS deployment, DevSecOps security scanning, Prometheus, and Grafana will be added as subsequent phases are completed.

---

## Prerequisites

To build and run this project locally, ensure the following tools are installed:

- Git
- Node.js
- npm
- Docker Desktop
- Visual Studio Code
- AWS CLI
- Terraform
- kubectl
- Minikube *(Optional for local Kubernetes testing)*
- Jenkins *(Upcoming)*

---

## Running the Project Locally

Clone the repository:

```bash
git clone https://github.com/Jefferson-ohis1/end-to-end-node-ci-cd-devsecops.git
```

Navigate to the application directory:

```bash
cd end-to-end-node-ci-cd-devsecops/app
```

Install dependencies:

```bash
npm install
```

Run the application:

```bash
npm start
```

Run unit tests:

```bash
npm test
```

Build the Docker image:

```bash
docker build -t node-monitoring-app:v1 .
```

Run the Docker container:

```bash
docker run -d --name node-monitoring-container -p 3000:3000 node-monitoring-app:v1
```

---

## Future CI/CD Pipeline

The completed pipeline will automate the following stages:

- Source Code Checkout
- Unit Testing
- SonarCloud Scan
- Snyk Scan
- Docker Build
- Trivy Scan
- Push Docker Image to Amazon ECR
- Deploy to Amazon EKS
- OWASP ZAP Dynamic Security Testing
- Monitor Application Health
- Verify Kubernetes Rollout

---

## Future Enhancements

The following enhancements will be implemented as the project progresses:

- Build a Jenkins CI/CD pipeline
- Integrate SonarCloud
- Integrate Snyk
- Integrate Trivy
- Integrate OWASP ZAP
- Deploy to Amazon EKS
- Configure Prometheus monitoring
- Configure Grafana dashboards
- Add architecture diagrams
- Add CI/CD workflow diagrams
- Implement GitHub Actions for repository automation *(Optional)*

---

## Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Passionate about building secure, automated, and scalable cloud infrastructure using DevOps and DevSecOps best practices.

GitHub: https://github.com/Jefferson-ohis1

---

> **Project Status:** This repository is actively being developed as a comprehensive end-to-end DevSecOps portfolio project. New phases, documentation, infrastructure, and automation features will be added as development progresses.
