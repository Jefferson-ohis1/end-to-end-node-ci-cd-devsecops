# End-to-End Node.js CI/CD & DevSecOps Platform on AWS

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?logo=docker)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?logo=jenkins)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI%2FCD-2088FF?logo=githubactions)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-326CE5?logo=kubernetes)
![Node.js](https://img.shields.io/badge/Node.js-Application-339933?logo=node.js)
![SonarCloud](https://img.shields.io/badge/SonarCloud-SAST-F3702A?logo=sonarcloud)
![Snyk](https://img.shields.io/badge/Snyk-SCA-4C4A73?logo=snyk)
![Trivy](https://img.shields.io/badge/Trivy-Container_Security-1904DA)
![OWASP ZAP](https://img.shields.io/badge/OWASP_ZAP-DAST-000000?logo=owasp)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-E6522C?logo=prometheus)
![Grafana](https://img.shields.io/badge/Grafana-Visualization-F46800?logo=grafana)
![License](https://img.shields.io/badge/License-MIT-green)

> A hands-on portfolio project demonstrating an end-to-end Node.js CI/CD and DevSecOps platform using AWS, Terraform, Jenkins, GitHub Actions, Docker, Kubernetes, security automation, repository governance, observability, and infrastructure lifecycle management.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Project Vision](#project-vision)
3. [Current Project Status](#current-project-status)
4. [Project Progress](#project-progress)
5. [Key Capabilities](#key-capabilities)
6. [Solution Architecture](#solution-architecture)
7. [DevSecOps Lifecycle](#devsecops-lifecycle)
8. [Technology Stack](#technology-stack)
9. [AWS Infrastructure](#aws-infrastructure)
10. [Repository Structure](#repository-structure)
11. [Project Workflow](#project-workflow)
12. [Implementation Phases](#implementation-phases)
13. [Phase 8 — Jenkins CI/CD & DevSecOps](#phase-8--jenkins-cicd--devsecops)
14. [Phase 9 — DevSecOps Governance & Security Hardening](#phase-9--devsecops-governance--security-hardening)
15. [Phase 10 — GitHub Actions CI/CD](#phase-10--github-actions-cicd)
16. [Phase 11 — Complete DevSecOps Platform](#phase-11--complete-devsecops-platform)
17. [Jenkins vs GitHub Actions](#jenkins-vs-github-actions)
18. [Security Model](#security-model)
19. [Running the Application Locally](#running-the-application-locally)
20. [Docker](#docker)
21. [Infrastructure Lifecycle](#infrastructure-lifecycle)
22. [Documentation](#documentation)
23. [Evidence](#evidence)
24. [Author](#author)

---

# Project Overview

This repository demonstrates the design, implementation, validation, and documentation of an end-to-end Node.js CI/CD and DevSecOps platform on AWS.

The project progressively builds a complete software delivery platform around a Node.js monitoring application.

The implementation includes:

* Node.js and Express.js
* Jest and Supertest
* Docker
* Terraform
* Amazon VPC
* IAM
* Amazon ECR
* Amazon EKS
* Kubernetes
* Jenkins
* GitHub Actions
* GitHub OIDC
* SonarCloud
* Snyk
* Trivy
* Gitleaks
* OWASP ZAP
* Prometheus-compatible application metrics
* Grafana
* Kubernetes Metrics Server
* Horizontal Pod Autoscaler
* GitHub Pull Request validation
* Branch protection
* Required CI status checks
* EKS Access Entry
* Namespace-scoped Kubernetes authorization
* Infrastructure lifecycle management

The project is intentionally developed in phases.

Each layer is implemented, built, tested, verified, evidenced, documented, committed, and integrated before the next layer is introduced.

---

# Project Vision

The project is designed to demonstrate more than individual DevOps tools.

It demonstrates how the tools work together across the software delivery lifecycle:

```text
Developer
    │
    ▼
Application Code
    │
    ▼
GitHub
    │
    ▼
Pull Request / Main
    │
    ▼
CI/CD
    │
    ▼
Security Validation
    │
    ▼
Container Build
    │
    ▼
Amazon ECR
    │
    ▼
Amazon EKS
    │
    ▼
Kubernetes
    │
    ▼
Application Runtime
    │
    ▼
Monitoring / Metrics
    │
    ▼
Autoscaling
    │
    ▼
Governance
    │
    ▼
Infrastructure Lifecycle
```

The project also demonstrates two CI/CD implementations:

```text
Jenkins
   +
GitHub Actions
```

The objective is to demonstrate transferable DevOps and DevSecOps engineering principles rather than dependence on a single CI/CD platform.

---

# Current Project Status

## Overall Status

**Phase 11 — Complete DevSecOps Platform: ✅ Completed**

The project's planned implementation and validation phases have been completed.

The final Phase 11 implementation included:

* Recreated AWS infrastructure
* Amazon EKS verification
* GitHub OIDC verification
* EKS Access Entry verification
* Terraform-managed Metrics Server
* Kubernetes Metrics API verification
* GitHub Actions application deployment
* Amazon ECR image publishing
* Amazon EKS application deployment
* Application health verification
* Application metrics verification
* Functional HPA scale-up
* Functional HPA scale-down
* Evidence capture
* Terraform teardown
* Independent AWS resource verification

The final HPA experiment demonstrated:

```text
2 replicas
    ↓
4 replicas
    ↓
5 replicas
    ↓
2 replicas
```

The temporary AWS environment was subsequently destroyed and independently verified as absent.

---

# Project Progress

| Phase    | Area                                      |          Status         |
| -------- | ----------------------------------------- | :---------------------: |
| Phase 1  | Project Initialization                    |       ✅ Completed       |
| Phase 2  | Application Refactoring                   |       ✅ Completed       |
| Phase 3  | Unit Testing                              |       ✅ Completed       |
| Phase 4  | Docker Containerization                   |       ✅ Completed       |
| Phase 5  | AWS Infrastructure with Terraform         |       ✅ Completed       |
| Phase 6  | Jenkins Server Setup                      |       ✅ Completed       |
| Phase 7  | Jenkins Installation & Configuration      |       ✅ Completed       |
| Phase 8  | Jenkins CI/CD & DevSecOps Integration     |       ✅ Completed       |
| Phase 9  | DevSecOps Governance & Security Hardening |       ✅ Completed       |
| Phase 10 | GitHub Actions CI/CD                      |       ✅ Completed       |
| Phase 11 | Complete DevSecOps Platform               |       ✅ Completed       |

---

# Key Capabilities

## Application

* Node.js
* Express.js
* Prometheus-compatible metrics
* `/health`
* `/metrics`
* Jest
* Supertest

## Infrastructure

* Terraform
* Amazon VPC
* IAM
* Amazon ECR
* Amazon EKS
* Kubernetes
* GitHub OIDC
* EKS Access Entry

## CI/CD

* Jenkins
* Jenkins Multibranch Pipeline
* Declarative Jenkins Pipeline
* GitHub Actions
* Workflow-as-code
* AWS OIDC authentication
* ECR image publishing
* EKS application deployment
* Kubernetes rollout verification

## Security

* SonarCloud SAST
* SonarCloud Quality Gate
* Snyk SCA
* Gitleaks
* Trivy
* OWASP ZAP
* GitHub branch protection
* Required CI status checks
* IAM least-privilege design
* GitHub OIDC
* EKS Access Entry
* Namespace-scoped Kubernetes authorization

## Kubernetes

* Amazon EKS
* Deployments
* Services
* LoadBalancer
* Horizontal Pod Autoscaler
* Metrics Server
* Metrics API
* ServiceMonitor
* Rollout verification
* Application health verification

## Observability

* Prometheus-compatible application metrics
* Prometheus
* Grafana
* Kubernetes Metrics Server
* Kubernetes Metrics API
* `kubectl top`
* HPA resource metrics

---

# Solution Architecture

The final project contains two complementary CI/CD implementations.

## Jenkins Architecture

```text
GitHub
   │
   ▼
Pull Request
   │
   ▼
Jenkins Multibranch
   │
   ▼
PR Validation
   │
   ├── Gitleaks
   ├── Jest
   ├── SonarCloud
   └── Snyk
   │
   ▼
GitHub Status
   │
   ▼
Branch Protection
   │
   ▼
Merge to main
   │
   ▼
Jenkins CI/CD
   │
   ├── Test
   ├── Security
   ├── Docker
   ├── Trivy
   ├── ECR
   ├── EKS
   ├── Kubernetes Verification
   ├── Application Health
   └── OWASP ZAP
```

## GitHub Actions Architecture

```text
GitHub
   │
   ▼
GitHub Actions
   │
   ├── Node.js
   ├── npm ci
   ├── Jest
   ├── Docker Build
   └── Docker Verification
          │
          ▼
      GitHub OIDC
          │
          ▼
       AWS IAM
          │
       ┌──┴──┐
       ▼     ▼
      ECR   EKS
             │
             ▼
        Kubernetes
             │
        ┌────┼────┐
        ▼    ▼    ▼
   Deployment Service HPA
             │
             ▼
        Application
```

## Cluster Platform Architecture

```text
Amazon EKS
     │
     ▼
Terraform
     │
     ▼
Helm
     │
     ▼
Metrics Server
     │
     ▼
Metrics API
     │
     ▼
HPA
```

The application CI/CD identity does not install Metrics Server.

The cluster-platform layer is managed separately through:

```text
infra-phase10-platform/
```

---

# DevSecOps Lifecycle

The completed project demonstrates:

```text
Source Control
      ↓
Pull Request
      ↓
Automated Validation
      ↓
Security Controls
      ↓
Unit Testing
      ↓
Container Build
      ↓
Container Security
      ↓
Amazon ECR
      ↓
Amazon EKS
      ↓
Kubernetes
      ↓
Application Health
      ↓
Metrics
      ↓
Autoscaling
      ↓
Governance
      ↓
Infrastructure Teardown
      ↓
Resource Verification
```

The lifecycle also demonstrates separation of:

```text
Application Delivery
        │
        ├── Jenkins
        └── GitHub Actions

Cluster Platform
        │
        └── Terraform + Helm
```

---

# Technology Stack

| Layer              | Technology       | Purpose                           |
| ------------------ | ---------------- | --------------------------------- |
| Application        | Node.js          | Application runtime               |
| Framework          | Express.js       | HTTP application framework        |
| Testing            | Jest / Supertest | Automated testing                 |
| Containerization   | Docker           | Application packaging             |
| IaC                | Terraform        | Infrastructure automation         |
| CI/CD              | Jenkins          | CI/CD automation                  |
| CI/CD              | GitHub Actions   | GitHub-native CI/CD               |
| Authentication     | GitHub OIDC      | Short-lived AWS authentication    |
| Registry           | Amazon ECR       | Container image registry          |
| Orchestration      | Amazon EKS       | Kubernetes platform               |
| Security           | SonarCloud       | SAST                              |
| Security           | Snyk             | SCA                               |
| Security           | Trivy            | Container vulnerability scanning  |
| Security           | Gitleaks         | Secret detection                  |
| Runtime Security   | OWASP ZAP        | DAST                              |
| Monitoring         | Prometheus       | Metrics collection                |
| Visualization      | Grafana          | Metrics visualization             |
| Kubernetes Metrics | Metrics Server   | Resource metrics API              |
| Autoscaling        | HPA              | CPU-based workload scaling        |
| Governance         | GitHub           | Pull Requests and branch controls |

---

# AWS Infrastructure

The original project infrastructure included:

```text
AWS
│
├── VPC
├── Public / Private Networking
├── Internet Gateway
├── NAT Gateway
├── Route Tables
├── Security Groups
├── IAM
├── Amazon ECR
├── Amazon EKS
└── Jenkins EC2 Infrastructure
```

The isolated Phase 10 infrastructure was managed separately:

```text
infra-phase10/
```

Its responsibilities included:

```text
VPC
ECR
EKS
IAM
GitHub OIDC
GitHub Actions IAM Role
EKS Access Entry
Kubernetes authorization
```

The cluster-platform layer was separated under:

```text
infra-phase10-platform/
```

Its responsibility was:

```text
Terraform
   ↓
Helm
   ↓
Metrics Server
```

Temporary AWS infrastructure was destroyed after validation.

---

# Repository Structure

```text
end-to-end-node-ci-cd-devsecops/

│
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
│   ├── 07-jenkins-installation.md
│   ├── 08-jenkins-ci-cd-devsecops-pipeline.md
│   ├── 09-devsecops-governance-and-security-hardening.md
│   ├── 10-github-actions-ci-cd.md
│   └── 11-complete-devsecops-platform.md
│
├── infra/
│   ├── provider.tf
│   ├── versions.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   ├── vpc.tf
│   ├── security-groups.tf
│   ├── iam.tf
│   ├── ecr.tf
│   ├── eks.tf
│   ├── jenkins.tf
│   └── outputs.tf
│
├── infra-phase10/
│   ├── provider.tf
│   ├── variables.tf
│   ├── vpc.tf
│   ├── security-groups.tf
│   ├── iam.tf
│   ├── ecr.tf
│   ├── eks.tf
│   └── github-actions.tf
│
├── infra-phase10-platform/
│   ├── .terraform.lock.hcl
│   ├── metrics-server.tf
│   ├── provider.tf
│   └── variables.tf
│
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── service-monitor.yaml
│   └── hpa.yaml
│
├── screenshots/
│   ├── 01-project-initialization/
│   ├── 02-application-refactoring/
│   ├── 03-unit-testing/
│   ├── 04-containerization/
│   ├── 05-terraform-infrastructure/
│   ├── 06-jenkins-server-setup/
│   ├── 07-jenkins-installation/
│   ├── 08-jenkins-ci-cd-devsecops-pipeline/
│   ├── 09-devsecops-governance-and-security-hardening/
│   ├── 10-github-actions-ci-cd/
│   └── 11-complete-devsecops-platform/
│
├── .github/
│   └── workflows/
│       └── github-actions.yml
│
├── .gitignore
├── Jenkinsfile
└── README.md
```

### Infrastructure Directory Roles

The Terraform configuration is organized into three infrastructure layers:

* **`infra/`** — Terraform configuration used for the earlier AWS and Jenkins infrastructure phases, including VPC, security groups, IAM, ECR, EKS, Jenkins, and associated outputs.
* **`infra-phase10/`** — Isolated Phase 10 AWS foundation for GitHub Actions CI/CD, including AWS networking, ECR, EKS, IAM/OIDC, and GitHub Actions integration.
* **`infra-phase10-platform/`** — Phase 11 Kubernetes platform layer that uses Terraform and Helm to manage cluster-level platform components such as Metrics Server.

The AWS environments represented by these Terraform configurations were deployed and validated during the project and subsequently destroyed after evidence was captured.

Terraform state files and generated plan artifacts are not included in the repository structure because they are runtime/generated artifacts rather than Terraform configuration files.

Terraform plan artifacts are excluded from version control:

```gitignore
*.tfplan
```

---

# Project Workflow

The project follows an evidence-driven implementation workflow:

```text
Implement
    ↓
Build
    ↓
Verify
    ↓
Capture Evidence
    ↓
Document
    ↓
Update README
    ↓
Commit
    ↓
Push
    ↓
Verify Repository
```

This prevents documentation from claiming functionality that has not actually been implemented and verified.

---

# Implementation Phases

| Phase    | Description                          | Status |
| -------- | ------------------------------------ | :----: |
| Phase 1  | Project Initialization               |    ✅   |
| Phase 2  | Application Refactoring              |    ✅   |
| Phase 3  | Unit Testing                         |    ✅   |
| Phase 4  | Docker Containerization              |    ✅   |
| Phase 5  | AWS Infrastructure with Terraform    |    ✅   |
| Phase 6  | Jenkins Server Setup                 |    ✅   |
| Phase 7  | Jenkins Installation & Configuration |    ✅   |
| Phase 8  | Jenkins CI/CD & DevSecOps            |    ✅   |
| Phase 9  | Governance & Security Hardening      |    ✅   |
| Phase 10 | GitHub Actions CI/CD                 |    ✅   |
| Phase 11 | Complete DevSecOps Platform          |    ✅   |

---

# Phase 8 — Jenkins CI/CD & DevSecOps

Phase 8 established the core Jenkins-based delivery platform.

The workflow included:

```text
GitHub
   ↓
Jenkins
   ↓
Dependencies
   ↓
Jest
   ↓
SonarCloud
   ↓
Snyk
   ↓
Docker
   ↓
Trivy
   ↓
Amazon ECR
   ↓
Amazon EKS
   ↓
Kubernetes Verification
   ↓
Application Health
   ↓
Prometheus / Grafana
   ↓
OWASP ZAP
```

Security was integrated throughout the delivery process rather than treated as a final checkpoint.

---

# Phase 9 — DevSecOps Governance & Security Hardening

Phase 9 added governance around the Jenkins delivery platform.

The governance flow is:

```text
Developer
    ↓
Feature Branch
    ↓
Pull Request
    ↓
Jenkins Multibranch
    ↓
Gitleaks
    ↓
Jest
    ↓
SonarCloud
    ↓
Snyk
    ↓
GitHub Status
    ↓
Branch Protection
    ↓
Merge
```

Phase 9 introduced:

* Pull Request validation
* Gitleaks
* Jenkins/GitHub status integration
* Branch protection
* Required CI status checks
* Controlled merge workflow
* Separation of PR validation and deployment-oriented CI/CD

---

# Phase 10 — GitHub Actions CI/CD

Phase 10 introduced GitHub Actions as a second CI/CD implementation.

The application delivery path was:

```text
GitHub
   ↓
GitHub Actions
   ↓
Node.js 24
   ↓
npm ci
   ↓
Jest
   ↓
Docker Build
   ↓
GitHub OIDC
   ↓
AWS IAM
   ↓
Amazon ECR
   ↓
Amazon EKS
   ↓
Kubernetes
```

Phase 10 established:

* GitHub Actions workflow execution
* Node.js CI
* Jest testing
* Docker build verification
* GitHub OIDC
* AWS IAM role assumption
* ECR integration
* SHA-tagged image publishing
* EKS authentication
* EKS Access Entry
* Namespace-scoped application authorization
* Kubernetes Deployment
* LoadBalancer Service
* HPA resource
* Rollout verification
* Application health verification

Metrics Server was deliberately separated from the application workflow.

---

# Phase 11 — Complete DevSecOps Platform

Phase 11 completed the final integration and validation scope.

## Platform Layer

Terraform managed Metrics Server through Helm:

```text
Terraform
   ↓
Helm
   ↓
Metrics Server 0.8.1
   ↓
Metrics API
```

The Helm chart was pinned to:

```text
3.13.1
```

The platform was successfully applied and verified.

## Application Delivery

GitHub Actions successfully delivered the application through:

```text
GitHub Actions
   ↓
OIDC
   ↓
AWS IAM
   ↓
ECR
   ↓
EKS
   ↓
Kubernetes
```

## Runtime

The application was verified through:

```text
/health
/metrics
```

## HPA

Functional CPU-based autoscaling was demonstrated:

```text
2
↓
4
↓
5
↓
2
```

This establishes both scale-up and scale-down behavior rather than merely proving that an HPA object exists.

## Teardown

The temporary environment was destroyed after validation.

Independent AWS checks confirmed:

```text
Terraform State → Clean
VPC             → Removed
EKS             → Removed
ECR             → Removed
Metrics Server  → Removed
```

---

# Jenkins vs GitHub Actions

The project demonstrates both platforms without treating either as universally superior.

| Area                   | Jenkins                          | GitHub Actions                    |
| ---------------------- | -------------------------------- | --------------------------------- |
| Pipeline definition    | `Jenkinsfile`                    | Workflow YAML                     |
| Repository integration | GitHub integration / Multibranch | Native GitHub                     |
| PR validation          | Multibranch Pipeline             | Workflow-based                    |
| Testing                | Jest                             | Jest                              |
| Container build        | Docker                           | Docker                            |
| Registry               | Amazon ECR                       | Amazon ECR                        |
| Kubernetes             | Amazon EKS                       | Amazon EKS                        |
| AWS authentication     | Jenkins credential / role model  | GitHub OIDC                       |
| Infrastructure         | Jenkins server                   | GitHub-hosted runners             |
| Application deployment | EKS                              | EKS                               |
| Platform dependency    | Separate platform controls       | Separate Terraform platform layer |

The project demonstrates that the same application delivery objectives can be implemented through different CI/CD execution models.

---

# Security Model

Security controls were implemented at multiple layers.

| Layer        | Control                 | Technology       |
| ------------ | ----------------------- | ---------------- |
| Source Code  | SAST                    | SonarCloud       |
| Source Code  | Secrets Detection       | Gitleaks         |
| Dependencies | SCA                     | Snyk             |
| Container    | Vulnerability Scanning  | Trivy            |
| Runtime      | DAST                    | OWASP ZAP        |
| Repository   | PR Validation           | Jenkins / GitHub |
| Repository   | Branch Protection       | GitHub           |
| AWS          | OIDC Authentication     | GitHub OIDC      |
| AWS          | Least-Privilege Role    | IAM              |
| Kubernetes   | Access Entry            | Amazon EKS       |
| Kubernetes   | Namespace Authorization | EKS/Kubernetes   |

The security model therefore spans:

```text
Source
  ↓
Dependencies
  ↓
Container
  ↓
AWS
  ↓
Kubernetes
  ↓
Runtime
  ↓
Repository Governance
```

---

# Running the Application Locally

## Prerequisites

Install:

* Git
* Node.js
* npm
* Docker Desktop
* Visual Studio Code

Optional deployment tooling:

* AWS CLI
* Terraform
* kubectl
* Helm
* Minikube
* Jenkins

---

## Clone the Repository

```bash
git clone https://github.com/Jefferson-ohis1/end-to-end-node-ci-cd-devsecops.git
```

```bash
cd end-to-end-node-ci-cd-devsecops/app
```

---

## Install Dependencies

```bash
npm install
```

---

## Run the Application

```bash
npm start
```

The application runs on:

```text
http://localhost:3000
```

---

## Application Endpoints

### Root

```text
GET /
```

### Health

```text
GET /health
```

Expected response:

```text
ok
```

### Metrics

```text
GET /metrics
```

The endpoint exposes Prometheus-compatible application metrics.

---

# Docker

## Build

From the `app/` directory:

```bash
docker build -t node-monitoring-app:v1 .
```

## Run

```bash
docker run -d \
  --name node-monitoring-container \
  -p 3000:3000 \
  node-monitoring-app:v1
```

The Dockerfile uses a multi-stage build and runs the application as the non-root `node` user.

---

# Infrastructure Lifecycle

Terraform is used to make the infrastructure reproducible.

The validated lifecycle is:

```text
Terraform Plan
      ↓
Terraform Apply
      ↓
Platform Configuration
      ↓
Application Deployment
      ↓
Runtime Verification
      ↓
HPA Experiment
      ↓
Evidence Capture
      ↓
Documentation
      ↓
Terraform Destroy
      ↓
AWS Resource Verification
```

Temporary portfolio environments are destroyed after validation to avoid unnecessary ongoing AWS costs.

The Phase 11 teardown was independently verified using AWS CLI commands in addition to Terraform's destroy output.

---

# Documentation

Detailed implementation documentation is available under `docs/`.

| Document                                            | Description                                                                  |
| --------------------------------------------------- | ---------------------------------------------------------------------------- |
| `01-project-initialization.md`                      | Project foundation and initial roadmap                                       |
| `02-application-refactoring.md`                     | Node.js application restructuring                                            |
| `03-unit-testing.md`                                | Jest and Supertest testing                                                   |
| `04-containerization.md`                            | Docker containerization                                                      |
| `05-terraform-infrastructure.md`                    | AWS infrastructure with Terraform                                            |
| `06-jenkins-server-setup.md`                        | Jenkins EC2 infrastructure                                                   |
| `07-jenkins-installation.md`                        | Jenkins installation and toolchain                                           |
| `08-jenkins-ci-cd-devsecops-pipeline.md`            | Jenkins CI/CD and DevSecOps                                                  |
| `09-devsecops-governance-and-security-hardening.md` | PR governance and security hardening                                         |
| `10-github-actions-ci-cd.md`                        | GitHub Actions, OIDC, ECR, EKS, Kubernetes                                   |
| `11-complete-devsecops-platform.md`                 | Final Phase 11 integration, runtime validation, HPA, lifecycle, and teardown |

---

# Evidence

Evidence is organized by implementation phase:

```text
screenshots/
├── 01-project-initialization/
├── 02-application-refactoring/
├── 03-unit-testing/
├── 04-containerization/
├── 05-terraform-infrastructure/
├── 06-jenkins-server-setup/
├── 07-jenkins-installation/
├── 08-jenkins-ci-cd-devsecops-pipeline/
├── 09-devsecops-governance-and-security-hardening/
├── 10-github-actions-ci-cd/
└── 11-complete-devsecops-platform/
```

## Phase 11 Evidence

```text
screenshots/11-complete-devsecops-platform/
│
├── 01-terraform-apply-success.png
├── 02-metrics-server-deployment-pods.png
├── 03-metrics-api.png
├── 04-live-metrics.png
├── 05-github-actions-complete-success.png
├── 06-github-actions-aws-deployment-success.png
├── 07-ecr-commit-image.png
├── 08-eks-application-deployment.png
├── 09-eks-service-and-hpa.png
├── 10-live-application-health-and-metrics.png
├── 11-hpa-scale-up-verification.png
└── 12-hpa-scale-down-verification.png
```

The evidence demonstrates the complete Phase 11 progression:

```text
Terraform Platform
      ↓
Metrics Server
      ↓
Metrics API
      ↓
GitHub Actions
      ↓
ECR
      ↓
EKS
      ↓
Application
      ↓
Health / Metrics
      ↓
HPA Scale-Up
      ↓
HPA Scale-Down
```

---

# Final Project Status

```text
Phase 1  → Complete
Phase 2  → Complete
Phase 3  → Complete
Phase 4  → Complete
Phase 5  → Complete
Phase 6  → Complete
Phase 7  → Complete
Phase 8  → Complete
Phase 9  → Complete
Phase 10 → Complete
Phase 11 → Complete
```

The completed technical lifecycle is:

```text
Build
  ↓
Test
  ↓
Secure
  ↓
Containerize
  ↓
Publish
  ↓
Deploy
  ↓
Verify
  ↓
Monitor
  ↓
Scale
  ↓
Govern
  ↓
Destroy
  ↓
Verify Cleanup
```

---

# Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Focused on building secure, automated, scalable, and cloud-native infrastructure using DevOps and DevSecOps practices.

---

> **Project Philosophy:** Build incrementally. Validate each layer. Capture evidence. Document the implementation. Automate security. Govern changes. Maintain reproducibility. Continuously improve.
