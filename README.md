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

## Current Progress

The project is being developed incrementally, with each phase documented in detail. The following milestones have been completed or are currently in progress.

### ✅ Completed

- ✔ Node.js Monitoring Application
- ✔ Application Refactoring
- ✔ Unit Testing (Jest & Supertest)
- ✔ Docker Containerization
- ✔ AWS Infrastructure Provisioned with Terraform
- ✔ Amazon EKS Cluster
- ✔ Amazon ECR Repository
- ✔ Jenkins EC2 Infrastructure
- ✔ IAM Roles & Instance Profiles
- ✔ Elastic IP Configuration

### 🚧 In Progress

- Jenkins Installation
- Jenkins Plugin Configuration
- Jenkins CI/CD Pipeline

### 📌 Planned

- SonarCloud Integration
- Snyk Integration
- Trivy Integration
- OWASP ZAP Integration
- Amazon EKS Deployment
- Prometheus Monitoring
- Grafana Dashboards

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

The AWS infrastructure for this project has been fully provisioned using Terraform and currently includes:

- Amazon VPC
- Public and Private Subnets
- Internet Gateway
- NAT Gateway
- Route Tables
- Security Groups
- Amazon Elastic Container Registry (ECR)
- Amazon Elastic Kubernetes Service (EKS)
- Jenkins Amazon EC2 Instance
- Jenkins IAM Role
- Jenkins IAM Instance Profile
- Jenkins Elastic IP

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
| Continuous Integration | Jenkins |
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
│   ├── 05-terraform-infrastructure.md
│   └── 06-jenkins-server-setup.md
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
│   ├── jenkins.tf
│   ├── outputs.tf
│   └── ...
│
├── screenshots/
│   ├── 01-project-initialization/
│   ├── 02-application-refactoring/
│   ├── 03-unit-testing/
│   ├── 04-containerization/
│   ├── 05-terraform-infrastructure/
│   └── 06-jenkins-server-setup/
│
├── .gitignore
├── Jenkinsfile          (Upcoming)
└── README.md
```

---

## Project Workflow

This project is developed using an **incremental engineering approach**, where each phase builds upon the previous one to deliver a complete end-to-end DevSecOps platform. Rather than implementing all components simultaneously, the solution is constructed in logical stages, allowing each layer to be designed, tested, validated, and documented before progressing to the next.

The implementation roadmap is illustrated below:

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
Jenkins Server Provisioning
            │
            ▼
Jenkins Installation & Configuration
            │
            ▼
CI/CD Pipeline
            │
            ▼
DevSecOps Security Scanning
            │
            ▼
Amazon EKS Deployment
            │
            ▼
Prometheus Monitoring
            │
            ▼
Grafana Dashboards
```

### Implementation Phases

| Phase | Objective |
|--------|-----------|
| **Application Development** | Develop the Node.js monitoring application and establish the project foundation. |
| **Application Refactoring** | Improve the application's structure, maintainability, and production readiness. |
| **Unit Testing** | Validate application functionality through automated unit tests. |
| **Docker Containerization** | Package the application into a portable and reproducible Docker container. |
| **Terraform Infrastructure** | Provision AWS infrastructure using Infrastructure as Code (IaC). |
| **Jenkins Server Provisioning** | Deploy a dedicated Jenkins automation server on Amazon EC2. |
| **Jenkins Installation & Configuration** | Configure Jenkins, required plugins, build tools, Docker, AWS CLI, and Kubernetes tooling. |
| **CI/CD Pipeline** | Automate application build, testing, containerization, and deployment workflows. |
| **DevSecOps Security Scanning** | Integrate SonarCloud, Snyk, Trivy, and OWASP ZAP to perform security validation throughout the software delivery lifecycle. |
| **Amazon EKS Deployment** | Deploy the containerized application to an Amazon Elastic Kubernetes Service (EKS) cluster. |
| **Prometheus Monitoring** | Collect infrastructure and application metrics for operational visibility. |
| **Grafana Dashboards** | Visualize system health and performance using interactive monitoring dashboards. |

This phased implementation approach ensures that every component of the platform is independently validated before introducing the next layer of functionality. The result is a reproducible, secure, and production-oriented DevSecOps environment that follows Infrastructure as Code (IaC), Continuous Integration/Continuous Deployment (CI/CD), and cloud-native best practices.

---

## Project Phases

The project is being implemented incrementally, with each phase building upon the previous one to create a complete cloud-native DevSecOps platform. The following table summarizes the implementation progress and the primary objective of each phase.

| Phase | Description | Status |
|-------|-------------|:------:|
| **Phase 1 – Project Initialization** | Established the project structure, repository, and development environment. | ✅ Completed |
| **Phase 2 – Application Refactoring** | Refactored the Node.js application to improve maintainability and production readiness. | ✅ Completed |
| **Phase 3 – Unit Testing** | Implemented automated unit tests to validate application functionality. | ✅ Completed |
| **Phase 4 – Docker Containerization** | Containerized the application using Docker for consistent and portable deployments. | ✅ Completed |
| **Phase 5 – AWS Infrastructure with Terraform** | Provisioned AWS infrastructure using Terraform, including networking, IAM, Amazon ECR, Amazon EKS, and the supporting cloud resources. | ✅ Completed |
| **Phase 6 – Jenkins Server Setup** | Provisioned the Jenkins automation server on Amazon EC2 with secure networking, IAM integration, and Elastic IP configuration. | ✅ Completed |
| **Phase 7 – Jenkins Installation & Configuration** | Install and configure Jenkins, Docker, AWS CLI, `kubectl`, and the required plugins for CI/CD automation. | 🚧 In Progress |
| **Phase 8 – DevSecOps Pipeline** | Build an end-to-end CI/CD pipeline integrating SonarCloud, Snyk, Trivy, and OWASP ZAP security scanning. | 🚧 Planned |
| **Phase 9 – Amazon EKS Deployment** | Deploy the containerized application to Amazon Elastic Kubernetes Service (EKS) using Kubernetes manifests. | 🚧 Planned |
| **Phase 10 – Prometheus & Grafana Monitoring** | Implement monitoring, metrics collection, and visualization using Prometheus and Grafana. | 🚧 Planned |

### Project Progress

| Status | Meaning |
|:------:|---------|
| ✅ | Completed |
| 🚧 | In Progress / Planned |

The project follows a phased implementation strategy to ensure that each component is designed, tested, and documented before progressing to the next stage. This incremental approach improves maintainability, simplifies troubleshooting, and demonstrates the complete lifecycle of building a production-ready DevSecOps platform on AWS.

---

## Documentation

Detailed documentation for each implementation phase is available in the `docs/` directory.

| Document | Description |
|----------|-------------|
| `01-project-initialization.md` | Project setup |
| `02-application-refactoring.md` | Application restructuring |
| `03-unit-testing.md` | Unit testing with Jest |
| `04-containerization.md` | Docker image creation |
| `05-terraform-infrastructure.md` | AWS networking, EKS, ECR and IAM provisioning |
| `06-jenkins-server-setup.md` | Provisioning a dedicated Jenkins server on Amazon EC2 using Terraform, including IAM roles, instance profile, networking, Elastic IP, Terraform validation, verification, and SSH connectivity |

Additional documentation will be added as new phases are completed.

---

## Screenshots

Project screenshots are organized by implementation phase.

```text
screenshots/
├── 01-project-initialization/
├── 02-application-refactoring/
├── 03-unit-testing/
├── 04-containerization/
├── 05-terraform-infrastructure/
└── 06-jenkins-server-setup/
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

- Configure Jenkins and required plugins
- Integrate SonarCloud
- Integrate Snyk
- Integrate Trivy
- Integrate OWASP ZAP
- Deploy to Amazon EKS
- Configure Prometheus
- Configure Grafana
- Add AWS architecture diagrams
- Add DevSecOps workflow diagrams
- Implement GitHub Actions (Optional)

---

## Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Passionate about building secure, automated, and scalable cloud infrastructure using DevOps and DevSecOps best practices.

GitHub: https://github.com/Jefferson-ohis1

---

> **Project Status:** This repository is actively being developed as a comprehensive end-to-end DevSecOps portfolio project. New phases, documentation, infrastructure, and automation features will be added as development progresses.
