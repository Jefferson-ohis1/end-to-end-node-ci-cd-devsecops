# End-to-End Node.js CI/CD & DevSecOps Pipeline on AWS

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

> A comprehensive portfolio project demonstrating modern DevOps and DevSecOps practices across application development, Infrastructure as Code, CI/CD automation, security validation, containerization, Kubernetes deployment, runtime security, observability, and repository governance.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Project Vision](#project-vision)
3. [Why the Project Is Built in Phases](#why-the-project-is-built-in-phases)
4. [Current Project Status](#current-project-status)
5. [Key Capabilities](#key-capabilities)
6. [Project Objectives](#project-objectives)
7. [Solution Architecture](#solution-architecture)
8. [DevSecOps Lifecycle](#devsecops-lifecycle)
9. [Technology Stack](#technology-stack)
10. [AWS Infrastructure](#aws-infrastructure)
11. [Repository Structure](#repository-structure)
12. [Project Workflow](#project-workflow)
13. [Implementation Phases](#implementation-phases)
14. [Phase 8 — Jenkins CI/CD & DevSecOps](#phase-8--jenkins-cicd--devsecops)
15. [Phase 9 — DevSecOps Governance & Security Hardening](#phase-9--devsecops-governance--security-hardening)
16. [Phase 9 Governance Model](#phase-9-governance-model)
17. [Security Controls](#security-controls)
18. [Jenkins Pipeline Model](#jenkins-pipeline-model)
19. [Pull Request Validation Flow](#pull-request-validation-flow)
20. [Branch Protection Strategy](#branch-protection-strategy)
21. [GitHub Webhook Integration](#github-webhook-integration)
22. [Phase 9 Evidence](#phase-9-evidence)
23. [Documentation](#documentation)
24. [Screenshots](#screenshots)
25. [Running the Application Locally](#running-the-application-locally)
26. [CI/CD Architecture](#cicd-architecture)
27. [Infrastructure Lifecycle](#infrastructure-lifecycle)
28. [Phase 9 → Phase 10 Transition](#phase-9--phase-10-transition)
29. [Future Roadmap](#future-roadmap)
30. [Project Status](#project-status)
31. [Author](#author)

---

# Project Overview

This repository demonstrates the design, implementation, validation, and documentation of an end-to-end **Node.js CI/CD and DevSecOps platform** using AWS, Jenkins, GitHub, Docker, Kubernetes, Terraform, and multiple security and observability technologies.

The project uses a Node.js monitoring application as the workload and progressively builds the platform around it.

The implementation covers:

* Application development and refactoring
* Automated unit testing
* Docker containerization
* Infrastructure as Code with Terraform
* AWS networking and IAM
* Amazon ECR
* Amazon EKS
* Jenkins CI/CD
* SonarCloud SAST
* Snyk SCA
* Trivy container vulnerability scanning
* OWASP ZAP DAST
* Prometheus monitoring
* Grafana visualization
* GitHub Pull Request validation
* Gitleaks secrets detection
* Jenkins Multibranch Pipeline
* GitHub/Jenkins webhook integration
* GitHub commit status reporting
* `main` branch protection
* Required CI status checks
* Controlled merge workflow
* GitHub Actions as the next CI/CD implementation

Rather than implementing all capabilities simultaneously, the project is developed incrementally. Each phase establishes and validates a specific engineering layer before the next layer is introduced.

---

# Project Vision

The objective of this project is not simply to demonstrate a collection of DevOps tools.

The broader objective is to demonstrate how the individual technologies work together to support the complete software delivery lifecycle:

```text
Developer
    │
    ▼
Application Code
    │
    ▼
Version Control
    │
    ▼
Pull Request
    │
    ▼
Automated Validation
    │
    ▼
Security Controls
    │
    ▼
Build
    │
    ▼
Container Security
    │
    ▼
Container Registry
    │
    ▼
Kubernetes Deployment
    │
    ▼
Runtime Security
    │
    ▼
Monitoring
    │
    ▼
Governance
    │
    ▼
Controlled Software Delivery
```

The project therefore demonstrates both sides of DevSecOps:

**Software delivery automation**

and

**Security and governance of the changes entering that delivery process.**

---

# Why the Project Is Built in Phases

The project follows an incremental engineering strategy.

Each phase is:

1. Designed
2. Implemented
3. Built
4. Tested
5. Verified
6. Evidenced with screenshots
7. Documented
8. Committed
9. Integrated into the repository

This approach intentionally avoids introducing every technology at the beginning.

The objective is to establish a working foundation first and then progressively introduce additional engineering concerns.

The overall progression is:

```text
Application Foundation
        │
        ▼
Application Quality
        │
        ▼
Containerization
        │
        ▼
Cloud Infrastructure
        │
        ▼
CI/CD Platform
        │
        ▼
DevSecOps Security
        │
        ▼
Cloud Deployment
        │
        ▼
Runtime Security & Observability
        │
        ▼
Repository Governance
        │
        ▼
Alternative CI/CD
        │
        ▼
Complete DevSecOps Platform
```

This phased structure also makes troubleshooting easier because each layer can be validated independently before the next layer is introduced.

---

# Current Project Status

## Overall Status

**Phase 9 — DevSecOps Governance & Security Hardening: ✅ Completed**

The project has completed the first major end-to-end Jenkins-based DevSecOps implementation and the governance layer surrounding it.

The next implementation phase is:

**Phase 10 — GitHub Actions CI/CD**

The final planned phase is:

**Phase 11 — Complete DevSecOps Platform**

---

## Project Progress

| Phase    | Area                                      |    Status   |
| -------- | ----------------------------------------- | :---------: |
| Phase 1  | Project Initialization                    | ✅ Completed |
| Phase 2  | Application Refactoring                   | ✅ Completed |
| Phase 3  | Unit Testing                              | ✅ Completed |
| Phase 4  | Docker Containerization                   | ✅ Completed |
| Phase 5  | AWS Infrastructure with Terraform         | ✅ Completed |
| Phase 6  | Jenkins Server Setup                      | ✅ Completed |
| Phase 7  | Jenkins Installation & Configuration      | ✅ Completed |
| Phase 8  | Jenkins CI/CD & DevSecOps Integration     | ✅ Completed |
| Phase 9  | DevSecOps Governance & Security Hardening | ✅ Completed |
| Phase 10 | GitHub Actions CI/CD                      |   ⏭️ Next   |
| Phase 11 | Complete DevSecOps Platform               |  🔜 Planned |

---

# Key Capabilities

## Application

* Node.js
* Express.js
* Prometheus metrics
* `/health` endpoint
* `/metrics` endpoint
* Automated Jest/Supertest testing

## Infrastructure

* Terraform
* Amazon VPC
* Public and private subnets
* Internet Gateway
* NAT Gateway
* Route tables
* Security groups
* IAM roles
* IAM instance profiles
* Amazon ECR
* Amazon EKS
* Jenkins EC2 infrastructure

## CI/CD

* GitHub
* Jenkins
* Jenkins Multibranch Pipeline
* Declarative Jenkins Pipeline
* Pull Request-aware pipeline execution
* Automated deployment pipeline
* Pipeline-as-code

## Security

* SonarCloud SAST
* SonarCloud Quality Gate
* Snyk SCA
* Trivy container scanning
* Gitleaks secrets detection
* OWASP ZAP DAST
* Security quality gates
* GitHub branch protection
* Required Jenkins status check

## Containerization

* Docker
* Multi-stage Docker build
* Non-root container execution
* Amazon ECR
* Container image verification

## Kubernetes

* Amazon EKS
* Kubernetes Deployments
* Kubernetes Services
* Horizontal Pod Autoscaler
* ServiceMonitor
* Rollout verification
* Application health verification

## Observability

* Prometheus
* Grafana
* Application metrics
* Kubernetes monitoring

## Governance

* Pull Request validation
* Secrets detection before merge
* Jenkins status reporting
* Protected `main` branch
* Required CI status check
* Controlled merge workflow
* Separation of PR validation and deployment workflows

---

# Project Objectives

The project aims to demonstrate the ability to:

* Build and maintain a Node.js application suitable for automated delivery.
* Implement automated application testing.
* Containerize applications using Docker.
* Provision cloud infrastructure using Terraform.
* Configure a dedicated Jenkins CI/CD environment.
* Integrate security throughout the software delivery lifecycle.
* Implement SAST and SCA controls.
* Scan container images for vulnerabilities.
* Detect accidentally committed secrets.
* Deploy containerized workloads to Amazon EKS.
* Verify Kubernetes deployments automatically.
* Implement runtime security testing with OWASP ZAP.
* Monitor application and Kubernetes metrics.
* Implement repository-level governance.
* Automate Pull Request validation.
* Protect the `main` branch using CI status requirements.
* Demonstrate both Jenkins and GitHub Actions CI/CD approaches.
* Document an end-to-end DevSecOps engineering lifecycle.

---

# Solution Architecture

The project has evolved into a layered DevSecOps architecture.

```text
                         Developer
                             │
                             ▼
                    GitHub Repository
                             │
              ┌──────────────┴──────────────┐
              │                             │
              ▼                             ▼
        Pull Request                  Push / Merge
              │                             │
              ▼                             ▼
      Jenkins PR Validation            Jenkins
              │                             │
      ┌───────┼────────┐                    │
      │       │        │                    │
      ▼       ▼        ▼                    ▼
   Gitleaks  Jest  SonarCloud            Full CI/CD
                       │                    │
                       ▼                    │
                     Snyk                   │
              │                             │
              ▼                             ▼
        GitHub Status                    Docker
              │                             │
              ▼                             ▼
      Branch Protection                  Trivy
              │                             │
              ▼                             ▼
        Merge to main                     ECR
                                            │
                                            ▼
                                           EKS
                                            │
                          ┌─────────────────┼────────────────┐
                          │                 │                │
                          ▼                 ▼                ▼
                     Kubernetes         Prometheus        OWASP ZAP
                     Verification           │
                          │                 ▼
                          │              Grafana
                          │
                          ▼
                  Running Application
```

---

# DevSecOps Lifecycle

The completed Jenkins-based lifecycle is:

```text
GitHub
   │
   ▼
Pull Request / Main
   │
   ▼
Jenkins
   │
   ├── PR Validation
   │     ├── Gitleaks
   │     ├── Dependency Validation
   │     ├── Jest
   │     ├── SonarCloud
   │     └── Snyk
   │
   └── Main / Normal Build
         ├── Dependency Installation
         ├── Unit Tests
         ├── SonarCloud
         ├── Snyk
         ├── Docker Build
         ├── Trivy
         ├── ECR
         ├── EKS
         ├── Kubernetes Verification
         ├── Application Health
         ├── HPA / Metrics Verification
         ├── Prometheus Verification
         └── OWASP ZAP
```

The unified Jenkinsfile uses Jenkins changeRequest() to distinguish Pull Request builds from deployment-oriented branch builds. Common source validation, testing, code-quality, dependency, and secret-scanning stages run for both build types. The changeRequest() condition is then used to prevent deployment-oriented stages from executing during Pull Request validation.

---

# Technology Stack

| Layer               | Technology                   | Purpose                          |
| ------------------- | ---------------------------- | -------------------------------- |
| Application         | Node.js                      | Application runtime              |
| Framework           | Express.js                   | HTTP application framework       |
| Metrics             | `prom-client`                | Prometheus metrics               |
| Testing             | Jest                         | Unit testing                     |
| API Testing         | Supertest                    | HTTP endpoint testing            |
| Version Control     | Git                          | Source control                   |
| Repository          | GitHub                       | Source hosting and collaboration |
| IaC                 | Terraform                    | AWS infrastructure provisioning  |
| Cloud               | AWS                          | Cloud infrastructure             |
| CI/CD               | Jenkins                      | Pipeline automation              |
| PR Automation       | Jenkins Multibranch Pipeline | PR-aware CI                      |
| Code Security       | SonarCloud                   | SAST                             |
| Dependency Security | Snyk                         | SCA                              |
| Secrets Detection   | Gitleaks                     | Secret detection                 |
| Containerization    | Docker                       | Application packaging            |
| Container Security  | Trivy                        | Image vulnerability scanning     |
| Registry            | Amazon ECR                   | Container image registry         |
| Orchestration       | Amazon EKS                   | Kubernetes platform              |
| Deployment          | Kubernetes                   | Application deployment           |
| Runtime Security    | OWASP ZAP                    | DAST                             |
| Monitoring          | Prometheus                   | Metrics collection               |
| Visualization       | Grafana                      | Monitoring dashboards            |
| Alternative CI/CD   | GitHub Actions               | GitHub-native automation         |

---

# AWS Infrastructure

Terraform was used to provision the cloud infrastructure required by the project.

The infrastructure included:

```text
AWS
│
├── VPC
│
├── Public Subnets
│
├── Private Subnets
│
├── Internet Gateway
│
├── NAT Gateway
│
├── Route Tables
│
├── Security Groups
│
├── IAM Roles
│
├── IAM Instance Profiles
│
├── Amazon ECR
│
├── Amazon EKS
│
└── Jenkins EC2 Infrastructure
```

The primary AWS region used during implementation was:

```text
us-east-1
```

### Important Infrastructure Lifecycle Note

The AWS environment was intentionally kept available during the implementation and validation of the live Jenkins, GitHub webhook, Pull Request, ECR, EKS, Kubernetes, monitoring, and security workflows.

After Phase 9 implementation, validation, evidence collection, documentation, and integration were completed, the AWS infrastructure was **destroyed** to avoid unnecessary ongoing cloud costs.

The Terraform configuration remains in the repository so the environment can be reproduced when required.

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
│   └── 09-devsecops-governance-and-security-hardening.md
│
├── infra/
│   ├── versions.tf
│   ├── provider.tf
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
│   └── 09-devsecops-governance-and-security-hardening/
│
├── .gitignore
├── Jenkinsfile
└── README.md
```

Terraform plan files are excluded from version control through:

```gitignore
*.tfplan
```

This prevents generated Terraform plan artifacts from being accidentally committed to the repository.

---

# Project Workflow

The project follows a controlled implementation workflow:

```text
Implement
    │
    ▼
Build
    │
    ▼
Verify
    │
    ▼
Capture Evidence
    │
    ▼
Document
    │
    ▼
Update README
    │
    ▼
Commit
    │
    ▼
Push
    │
    ▼
Verify Repository
```

This workflow ensures that project documentation reflects functionality that has actually been implemented and validated.

---

# Implementation Phases

| Phase                                                   | Description                                                                                                            | Status |
| ------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------- | :----: |
| **Phase 1 — Project Initialization**                    | Established repository, application baseline, development environment, and project roadmap.                            |    ✅   |
| **Phase 2 — Application Refactoring**                   | Refactored the Node.js application for maintainability and production-oriented operation.                              |    ✅   |
| **Phase 3 — Unit Testing**                              | Implemented Jest and Supertest automated tests.                                                                        |    ✅   |
| **Phase 4 — Docker Containerization**                   | Containerized the Node.js application using Docker.                                                                    |    ✅   |
| **Phase 5 — AWS Infrastructure with Terraform**         | Provisioned networking, IAM, ECR, EKS, and supporting AWS resources.                                                   |    ✅   |
| **Phase 6 — Jenkins Server Setup**                      | Provisioned the Jenkins EC2 infrastructure using Terraform.                                                            |    ✅   |
| **Phase 7 — Jenkins Installation & Configuration**      | Installed Jenkins and configured Docker, AWS CLI, kubectl, Helm, Trivy, credentials, and supporting tools.             |    ✅   |
| **Phase 8 — Jenkins CI/CD & DevSecOps**                 | Implemented the end-to-end Jenkins CI/CD and DevSecOps workflow.                                                       |    ✅   |
| **Phase 9 — DevSecOps Governance & Security Hardening** | Added PR validation, secrets detection, GitHub integration, status reporting, branch protection, and merge governance. |    ✅   |
| **Phase 10 — GitHub Actions CI/CD**                     | Implement an alternative GitHub-native CI/CD workflow.                                                                 |   ⏭️   |
| **Phase 11 — Complete DevSecOps Platform**              | Final integration, comparison, validation, architecture, and project conclusion.                                       |   🔜   |

---

# Phase 8 — Jenkins CI/CD & DevSecOps

Phase 8 transformed the Jenkins environment established in Phase 7 into an end-to-end CI/CD and DevSecOps platform.

The completed workflow included:

```text
GitHub
   │
   ▼
Jenkins
   │
   ▼
Dependency Installation
   │
   ▼
Jest
   │
   ▼
SonarCloud SAST
   │
   ▼
Quality Gate
   │
   ▼
Snyk SCA
   │
   ▼
Docker Build
   │
   ▼
Trivy
   │
   ▼
Amazon ECR
   │
   ▼
Amazon EKS
   │
   ▼
Kubernetes Verification
   │
   ▼
Application Health
   │
   ▼
Prometheus / Grafana
   │
   ▼
OWASP ZAP
```

Security was integrated throughout the delivery process rather than treated as a final checkpoint.

Phase 8 established the **core delivery platform**.

---

# Phase 9 — DevSecOps Governance & Security Hardening

Phase 9 introduced repository-level governance and security controls around the already-established Jenkins delivery platform.

## Why Phase 9 Was Introduced at This Point

The project deliberately did not introduce Pull Request governance and secrets detection at the beginning.

Phases 1–8 first established and validated the core platform:

```text
Application
    ↓
Testing
    ↓
CI/CD
    ↓
SAST
    ↓
SCA
    ↓
Container Security
    ↓
ECR
    ↓
EKS
    ↓
Runtime Security
    ↓
Observability
```

Once the delivery system was operational, the next engineering question became:

> **How do I govern and secure the changes entering the delivery pipeline?**

This is the purpose of Phase 9.

Introducing repository governance after the core pipeline was stable provided a clearer incremental progression and avoided mixing pipeline implementation problems with repository-governance problems.

This approach also fulfilled the project roadmap established earlier in the project, where **Pull Request validation and secrets detection were intentionally planned as final enhancements after the core CI/CD pipeline was complete**.

---

# Phase 9 Governance Model

The Phase 9 model is:

```text
Developer
    │
    ▼
Feature Branch
    │
    ▼
GitHub Pull Request
    │
    ▼
Jenkins Multibranch Pipeline
    │
    ▼
PR Validation
    │
    ├── Gitleaks
    ├── Dependency Validation
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
Post-Merge CI/CD
```

Phase 9 therefore establishes a governance gate between developer changes and the deployment-oriented CI/CD workflow.

---

# Security Controls

The project now includes security controls at multiple layers.

| Security Layer | Control                           | Tool       |
| -------------- | --------------------------------- | ---------- |
| Source Code    | Static analysis                   | SonarCloud |
| Source Code    | Quality Gate                      | SonarCloud |
| Dependencies   | Dependency vulnerability analysis | Snyk       |
| Secrets        | Secret detection                  | Gitleaks   |
| Container      | Image vulnerability scanning      | Trivy      |
| Runtime        | Dynamic security testing          | OWASP ZAP  |
| Repository     | Pull Request validation           | Jenkins    |
| Repository     | Required CI status                | GitHub     |
| Repository     | Protected `main` branch           | GitHub     |

### Security Model

```text
Source Code
    │
    ├── SonarCloud
    │
    └── Gitleaks
         │
         ▼
Dependencies
    │
    └── Snyk
         │
         ▼
Docker Image
    │
    └── Trivy
         │
         ▼
Running Application
    │
    └── OWASP ZAP
         │
         ▼
Repository Governance
    │
    ├── Pull Request
    ├── Jenkins Status
    └── Branch Protection
```

---

# Jenkins Pipeline Model

Phase 9 consolidated Pull Request validation into the unified `Jenkinsfile`.

The pipeline uses Jenkins Declarative Pipeline conditions to distinguish Pull Request builds from normal/mainline builds.

### Pull Request Path

```text
Pull Request
    │
    ▼
changeRequest()
    │
    ├── Gitleaks
    ├── npm / Dependency Validation
    ├── Jest
    ├── SonarCloud
    └── Snyk
```

### Main / Normal Build Path

```text
Normal Build
    │
    ▼
not changeRequest()
    │
    ├── Docker
    ├── Trivy
    ├── ECR
    ├── EKS
    ├── Kubernetes Verification
    ├── Application Health
    ├── Monitoring Verification
    └── OWASP ZAP
```

This separation prevents a Pull Request validation build from unnecessarily performing deployment-oriented activities.

---

# Pull Request Validation Flow

The completed Pull Request workflow is:

```text
Developer
    │
    ▼
Feature Branch
    │
    ▼
Pull Request → main
    │
    ▼
GitHub
    │
    ▼
Jenkins Multibranch Pipeline
    │
    ▼
PR Validation
    │
    ├── Gitleaks
    ├── npm / Dependencies
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
Merge
```

A successful PR validation does not automatically mean that every deployment stage is executed.

Instead, Phase 9 intentionally separates:

**pre-merge validation**

from

**post-merge/deployment-oriented CI/CD**.

---

# Branch Protection Strategy

The `main` branch was protected as part of Phase 9 governance.

The implemented controls include:

* Pull Request-based changes
* Required status checks
* Jenkins status validation
* Branch synchronization requirement
* No bypass for the configured protection workflow

The required Jenkins status check is:

```text
continuous-integration/jenkins/branch
```

### Human Review

Required review approval was **not enabled**.

This was an intentional project-level decision because this is a single-developer portfolio project. The governance demonstration therefore focuses on automated validation and merge controls rather than requiring a second human reviewer.

The distinction is:

```text
Automated Governance
        │
        ├── Jenkins validation
        ├── Security checks
        ├── Required status
        └── Branch protection

Human Governance
        │
        └── Required reviewer approval
              (not enabled for this project)
```

---

# GitHub Webhook Integration

GitHub/Jenkins integration was configured to allow repository events to trigger and update the Jenkins Multibranch Pipeline workflow.

The Jenkins webhook endpoint used during the project was:

```text
http://JENKINS-PUBLIC-IP:8080/github-webhook/
```

The webhook delivery was successfully verified during live implementation.

The project used the webhook as part of the GitHub/Jenkins integration required for branch and Pull Request automation.

> **Production consideration:** the live project environment used a temporary public Jenkins endpoint for portfolio validation. A production implementation should use HTTPS, appropriate authentication/secrets, network restrictions, and hardened Jenkins exposure.

---

# Phase 9 Evidence

Phase 9 implementation and validation evidence is stored under:

```text
screenshots/09-devsecops-governance-and-security-hardening/
```

Evidence includes screenshots covering the GitHub Pull Request, Jenkins Multibranch Pipeline, PR validation stages, successful validation, GitHub status checks, merge state, and the completed repository workflow.

Representative evidence includes:

```text
jenkins-multi-branch-pipeline.png
github-webhook.png
github-commit-verification.png
branch-protection-rule.png
github-pull-request-validation.png
github-pr-ready-to-merge.png
github-pr-1-merged.png
github-main-merged-phase9.png
jenkins-pr-validation-stage-view.png
jenkins-pr-validation-build-2-stage-view.png
jenkins-pr-validation-build-2-success.png
```

---

# Documentation

Detailed implementation documentation is available in the `docs/` directory.

| Document                                            | Description                                                                                                           |
| --------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `01-project-initialization.md`                      | Project foundation, repository, environment, and initial roadmap                                                      |
| `02-application-refactoring.md`                     | Node.js application restructuring and production-oriented improvements                                                |
| `03-unit-testing.md`                                | Jest and Supertest automated testing                                                                                  |
| `04-containerization.md`                            | Docker containerization                                                                                               |
| `05-terraform-infrastructure.md`                    | AWS infrastructure provisioning with Terraform                                                                        |
| `06-jenkins-server-setup.md`                        | Jenkins EC2 infrastructure provisioning                                                                               |
| `07-jenkins-installation.md`                        | Jenkins installation and DevOps toolchain configuration                                                               |
| `08-jenkins-ci-cd-devsecops-pipeline.md`            | End-to-end Jenkins CI/CD and DevSecOps implementation                                                                 |
| `09-devsecops-governance-and-security-hardening.md` | Pull Request validation, Gitleaks, GitHub/Jenkins integration, branch protection, governance, and Phase 10 transition |

---

# Screenshots

Screenshots are organized by implementation phase:

```text
screenshots/
│
├── 01-project-initialization/
├── 02-application-refactoring/
├── 03-unit-testing/
├── 04-containerization/
├── 05-terraform-infrastructure/
├── 06-jenkins-server-setup/
├── 07-jenkins-installation/
├── 08-jenkins-ci-cd-devsecops-pipeline/
└── 09-devsecops-governance-and-security-hardening/
```

Each phase's evidence is captured after implementation and verification.

---

# Running the Application Locally

## Prerequisites

Install:

* Git
* Node.js
* npm
* Docker Desktop
* Visual Studio Code

Optional cloud/deployment tooling:

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

The metrics endpoint exposes Prometheus-compatible application metrics.

---

## Run Tests

```bash
npm test
```

The project uses Jest and Supertest for automated testing.

---

# Docker

## Build the Image

From the `app/` directory:

```bash
docker build -t node-monitoring-app:v1 .
```

## Run the Container

```bash
docker run -d \
  --name node-monitoring-container \
  -p 3000:3000 \
  node-monitoring-app:v1
```

The application can then be accessed through:

```text
http://localhost:3000
```

---

# CI/CD Architecture

The project currently demonstrates a Jenkins-based CI/CD architecture.

```text
                    GitHub
                       │
                       ▼
                  Jenkins
                       │
             ┌─────────┴─────────┐
             │                   │
             ▼                   ▼
        Pull Request        Main / Merge
             │                   │
             ▼                   ▼
      PR Validation          Full CI/CD
             │                   │
             ├── Gitleaks        ├── Test
             ├── Jest            ├── SonarCloud
             ├── SonarCloud      ├── Snyk
             └── Snyk            ├── Docker
                                 ├── Trivy
                                 ├── ECR
                                 ├── EKS
                                 ├── Verification
                                 └── OWASP ZAP
```

Phase 10 will introduce GitHub Actions as a second implementation of the CI/CD lifecycle.

---

# Infrastructure Lifecycle

The AWS environment was used as a temporary implementation and validation environment.

The lifecycle was:

```text
Terraform
    │
    ▼
Provision AWS Infrastructure
    │
    ▼
Configure Jenkins
    │
    ▼
Implement CI/CD
    │
    ▼
Implement DevSecOps
    │
    ▼
Implement Governance
    │
    ▼
Validate End-to-End
    │
    ▼
Capture Evidence
    │
    ▼
Complete Documentation
    │
    ▼
Destroy AWS Infrastructure
```

Destroying the environment after validation demonstrates an additional operational practice:

> **Cloud infrastructure should be provisioned when required and removed when it is no longer needed, particularly for temporary development and portfolio environments.**

The Terraform configuration remains available for future reproduction.

---

# Phase 9 → Phase 10 Transition

Phase 9 completes the governance layer surrounding the Jenkins-based delivery platform.

The project has progressed from:

```text
Application Development
        │
        ▼
Application Testing
        │
        ▼
CI/CD Automation
        │
        ▼
Security Scanning
        │
        ▼
Containerization
        │
        ▼
Cloud Deployment
        │
        ▼
Runtime Security
        │
        ▼
Observability
        │
        ▼
Repository Governance
```

The next step is to introduce a second CI/CD implementation.

## Phase 10 — GitHub Actions CI/CD

Phase 10 will implement GitHub Actions as an alternative CI/CD platform.

The objective is **not to immediately replace Jenkins**.

Instead, the project will demonstrate how the same DevSecOps principles can be implemented using GitHub-native automation.

The planned workflow is:

```text
GitHub
   │
   ▼
GitHub Actions
   │
   ├── Checkout
   ├── Node.js Setup
   ├── Dependency Installation
   ├── Unit Testing
   ├── Security Validation
   ├── Docker Build
   ├── Container Scanning
   ├── ECR
   ├── EKS
   └── Deployment Verification
```

This will allow the project to demonstrate experience with both:

```text
Jenkins CI/CD
       +
GitHub Actions CI/CD
```

while maintaining the same application and core DevSecOps objectives.

---

# Future Roadmap

| Phase        | Documentation                                       | Scope                                                                              |   Status   |
| ------------ | --------------------------------------------------- | ---------------------------------------------------------------------------------- | :--------: |
| **Phase 9**  | `09-devsecops-governance-and-security-hardening.md` | PR validation, Gitleaks, GitHub/Jenkins integration, branch protection, governance | ✅ Complete |
| **Phase 10** | `10-github-actions-ci-cd.md`                        | GitHub Actions CI/CD implementation                                                |   ⏭️ Next  |
| **Phase 11** | `11-complete-devsecops-platform.md`                 | Final architecture, integration, validation, comparison, and project conclusion    | 🔜 Planned |

---

# Phase 10 — GitHub Actions CI/CD

The planned Phase 10 implementation will demonstrate:

* GitHub Actions workflows
* Pipeline/workflow-as-code
* Automated testing
* Security integration
* Docker image building
* Container vulnerability scanning
* Amazon ECR integration
* Amazon EKS deployment
* Deployment verification
* GitHub-native CI/CD automation

The implementation will provide an opportunity to compare Jenkins and GitHub Actions across:

* Pipeline architecture
* Configuration
* Authentication
* Security integration
* Build execution
* Deployment
* Repository integration
* Operational complexity

---

# Phase 11 — Complete DevSecOps Platform

Phase 11 will be the final integration and validation phase.

It will consolidate the complete project into a final architecture and engineering narrative.

The final documentation is expected to cover:

* Complete architecture
* Complete DevSecOps lifecycle
* Jenkins CI/CD implementation
* GitHub Actions implementation
* Pull Request governance
* Secrets detection
* Security scanning
* Container security
* Amazon ECR
* Amazon EKS
* Kubernetes deployment
* OWASP ZAP
* Prometheus
* Grafana
* End-to-end validation
* Jenkins vs GitHub Actions
* Security control summary
* Infrastructure lifecycle
* Lessons learned
* Final project outcome

The final platform will demonstrate:

```text
Developer
    │
    ▼
GitHub
    │
    ├───────────────┐
    │               │
    ▼               ▼
Pull Request       Push / Merge
    │               │
    ▼               ▼
PR Validation     Jenkins
    │               │
    ├── Gitleaks    ▼
    ├── Jest      CI/CD
    ├── SAST        │
    └── SCA         ├── Test
                    ├── Security
                    ├── Build
                    ├── Scan
                    ├── ECR
                    └── EKS
                         │
                         ▼
                  Running Application
                         │
                    ┌────┴────┐
                    ▼         ▼
                Prometheus  Grafana

Additional CI/CD implementation:

GitHub
   │
   ▼
GitHub Actions
   │
   ├── Test
   ├── Security
   ├── Build
   ├── Scan
   ├── ECR
   └── EKS
```

---

# Project Status

## Phase 9 — Completed

Phase 9 completed the **DevSecOps Governance & Security Hardening** layer.

The completed project now demonstrates:

```text
Build
  ↓
Test
  ↓
Secure
  ↓
Containerize
  ↓
Scan
  ↓
Publish
  ↓
Deploy
  ↓
Verify
  ↓
Monitor
  ↓
Govern
  ↓
Control Future Changes
```

The project has therefore progressed beyond demonstrating how to automate software delivery.

It now also demonstrates how to **govern and secure the changes entering the delivery process**.

### Current State

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
Phase 10 → Next
Phase 11 → Planned
```

---

# Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Passionate about building secure, automated, scalable, and cloud-native infrastructure using DevOps and DevSecOps practices.

* GitHub: `Jefferson-ohis1`
* LinkedIn: `Jefferson Ohis`

---

> **Project Philosophy:** Build incrementally. Validate each layer. Capture evidence. Document the implementation. Automate security. Govern changes. Continuously improve.
