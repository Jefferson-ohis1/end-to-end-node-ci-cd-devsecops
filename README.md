# End-to-End Node.js CI/CD DevSecOps Pipeline on AWS

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?logo=docker)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?logo=jenkins)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-326CE5?logo=kubernetes)
![Node.js](https://img.shields.io/badge/Node.js-Application-339933?logo=node.js)
![License](https://img.shields.io/badge/License-MIT-green)

> A comprehensive portfolio project demonstrating modern DevOps and DevSecOps practices using Node.js, Docker, Terraform, Jenkins, AWS, Kubernetes, Prometheus, and Grafana.


---
## Table of Contents

1. [Project Overview](#project-overview)
2. [Current Progress](#current-progress)
3. [Project Objectives](#project-objectives)
4. [Solution Architecture](#solution-architecture)
5. [AWS Infrastructure Provisioned](#aws-infrastructure-provisioned)
6. [Technology Stack](#technology-stack)
7. [Project Structure](#project-structure)
8. [Repository Structure](#repository-structure)
9. [Project Workflow](#project-workflow)
10. [Project Phases](#project-phases)
11. [Latest Milestone](#latest-milestone)
12. [Documentation](#documentation)
13. [Screenshots](#screenshots)
14. [Prerequisites](#prerequisites)
15. [Running the Project Locally](#running-the-project-locally)
16. [Future CI/CD Pipeline](#future-cicd-pipeline)
17. [Future Enhancements](#future-enhancements)
18. [Author](#author)
---


## Project Overview

This repository demonstrates the design, implementation, and deployment of a complete end-to-end DevSecOps pipeline for a containerized Node.js monitoring application on Amazon Web Services (AWS).

The project combines modern DevOps and DevSecOps practices by integrating Infrastructure as Code (Terraform), containerization (Docker), continuous integration and continuous deployment (Jenkins), automated security scanning (SonarCloud, Snyk, Trivy, and OWASP ZAP), container orchestration (Amazon Elastic Kubernetes Service), and application monitoring (Prometheus and Grafana).

Rather than focusing on a single technology, this project demonstrates how industry-standard DevOps and DevSecOps tools integrate to automate the complete software delivery lifecycle—from application development and infrastructure provisioning to deployment, security validation, and monitoring.

The repository is being developed incrementally using a phased implementation approach. Each phase is independently designed, implemented, tested, and documented to demonstrate both the engineering process and the practical application of modern cloud-native DevOps and DevSecOps practices.


---

## Key Features

- Infrastructure provisioned using Terraform (IaC)
- Dedicated Jenkins automation server on Amazon EC2
- Dockerized Node.js monitoring application
- Amazon Elastic Kubernetes Service (EKS) deployment platform
- Amazon Elastic Container Registry (ECR)
- Automated unit testing with Jest and Supertest
- Production-ready Jenkins automation server
- DevSecOps pipeline with SonarCloud, Snyk, Trivy, and OWASP ZAP (upcoming)
- Monitoring with Prometheus and Grafana (upcoming)

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
- ✔ Jenkins Installation & Configuration
- ✔ Docker Installation on Jenkins Server
- ✔ AWS CLI Installation
- ✔ kubectl Installation
- ✔ Helm Installation
- ✔ Trivy Installation
- ✔ Jenkins Initial Configuration

### 🚧 In Progress

- Jenkins CI/CD Pipeline


### 📌 Planned

- SonarCloud Integration
- Snyk Integration
- OWASP ZAP Integration
- Amazon EKS Deployment
- Prometheus Monitoring
- Grafana Dashboards

---

## Project Roadmap

The project is being implemented in incremental phases, with each milestone building toward a complete end-to-end DevSecOps platform.

| Phase | Status |
|--------|:------:|
| Project Initialization | ✅ |
| Application Refactoring | ✅ |
| Unit Testing | ✅ |
| Docker Containerization | ✅ |
| Terraform Infrastructure | ✅ |
| Jenkins Server Setup | ✅ |
| Jenkins Installation & Configuration | ✅ |
| Jenkins CI/CD Pipeline | 🚧 |
| DevSecOps Integration | ⏳ |
| Amazon EKS Deployment | ⏳ |
| Prometheus & Grafana | ⏳ |

**Legend**

- ✅ Completed
- 🚧 In Progress
- ⏳ Planned

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

The final solution architecture will illustrate the complete DevSecOps workflow, demonstrating how application code progresses from source control through automated testing, security validation, containerization, deployment, and monitoring.

The architecture will include the following components:

- GitHub
- Jenkins
- SonarCloud (SAST)
- Snyk (SCA)
- Docker
- Trivy
- Amazon Elastic Container Registry (ECR)
- Amazon Elastic Kubernetes Service (EKS)
- OWASP ZAP (DAST)
- Prometheus
- Grafana
- AWS Infrastructure provisioned with Terraform

> **Architecture Diagram:** A comprehensive architecture diagram illustrating the end-to-end DevSecOps workflow will be added after the CI/CD pipeline has been fully implemented.


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

| Layer | Technology |
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
| Container Security | Trivy |
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
│   ├── 06-jenkins-server-setup.md
│   └── 07-jenkins-installation.md
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
│   ├── 06-jenkins-server-setup/
│   └── 07-jenkins-installation/
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
Jenkins CI Pipeline
            │
            ▼
SonarCloud (SAST)
            │
            ▼
Snyk (SCA)
            │
            ▼
Docker Build
            │
            ▼
Trivy Scan
            │
            ▼
Amazon ECR
            │
            ▼
Amazon EKS
            │
            ▼
OWASP ZAP (DAST)
            │
            ▼
Prometheus
            │
            ▼
Grafana
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
| **Phase 7 – Jenkins Installation & Configuration** | Installed and configured Jenkins, Docker, AWS CLI, kubectl, Helm, Trivy, completed the initial Jenkins setup, and verified the Jenkins dashboard. | ✅ Completed |
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

## Latest Milestone

Phase 7 has been successfully completed. A production-ready Jenkins automation server has been installed and configured on an Amazon EC2 instance.

The Jenkins environment now includes:

- Jenkins LTS
- Docker Engine
- AWS CLI
- kubectl
- Helm
- Trivy
- Administrator account configuration
- Jenkins Dashboard verification
- Docker permissions for the Jenkins user
- Port 8080 accessibility verification

This environment provides the complete toolchain required to automate application builds, containerization, security scanning, and Kubernetes deployments.

**With the Jenkins environment fully operational, the platform is now ready for the implementation of a production-grade CI/CD and DevSecOps pipeline in Phase 8.**
---

## Documentation

Detailed documentation for each implementation phase is available in the `docs/` directory.

| Document | Description |
|----------|-------------|
| `01-project-initialization.md` | Project setup |
| `02-application-refactoring.md` | Application restructuring |
| `03-unit-testing.md` | Unit testing with Jest |
| `04-containerization.md` | Docker image creation |
| `05-terraform-infrastructure.md` | AWS networking, EKS, ECR, and IAM provisioning |
| `06-jenkins-server-setup.md` | Provisioning a dedicated Jenkins server on Amazon EC2 using Terraform, including IAM roles, instance profile, networking, Elastic IP, Terraform validation, verification, and SSH connectivity |
| `07-jenkins-installation.md` | Installation and configuration of Jenkins and the supporting DevOps toolchain, including Java, Docker, AWS CLI, kubectl, Helm, and Trivy, along with service configuration, Docker permissions, port 8080 verification, initial Jenkins setup, administrator account creation, instance configuration, and dashboard verification. |

> **Additional documentation will be added as new phases are completed.**

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
├── 06-jenkins-server-setup/
└── 07-jenkins-installation/
```

> **Additional screenshots for Jenkins, Amazon EKS deployment, DevSecOps security scanning, Prometheus, and Grafana will be added as subsequent phases are completed.**

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
- Jenkins

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

Open your browser:

http://localhost:3000

---

## Future CI/CD Pipeline

The completed pipeline will automate the following stages:

```text
GitHub
   │
   ▼
Checkout Source Code
   │
   ▼
Install Dependencies
   │
   ▼
Unit Testing
   │
   ▼
SonarCloud Scan
   │
   ▼
Quality Gate
   │
   ▼
Snyk Scan
   │
   ▼
Docker Build
   │
   ▼
Trivy Scan
   │
   ▼
Push Image to Amazon ECR
   │
   ▼
Deploy to Amazon EKS
   │
   ▼
Verify Rollout
   │
   ▼
OWASP ZAP Scan
```

---

## Future Enhancements

The following enhancements will be implemented as the project progresses:

- Build a complete Jenkins CI/CD pipeline
- Integrate SonarCloud (SAST)
- Integrate Snyk (Software Composition Analysis)
- Integrate OWASP ZAP (DAST)
- Deploy automatically to Amazon EKS
- Configure Prometheus monitoring
- Configure Grafana dashboards
- Add architecture diagrams
- Add pipeline workflow diagrams
- Implement GitHub Actions (Optional)

---

## Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Passionate about building secure, automated, and scalable cloud infrastructure using DevOps and DevSecOps best practices.

- **GitHub:** https://github.com/Jefferson-ohis1
- **LinkedIn:** https://www.linkedin.com/in/jefferson-ohis-oviosu-5a982a168

---

> **Current Status (August 2026):** Phase 7 (Jenkins Installation & Configuration) has been successfully completed. The project is now moving into Phase 8, where a complete Jenkins CI/CD and DevSecOps pipeline will be implemented with SonarCloud, Snyk, Trivy, Docker, Amazon ECR, Amazon EKS, and OWASP ZAP.
