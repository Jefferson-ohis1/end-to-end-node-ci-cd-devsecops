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

> A comprehensive portfolio project demonstrating modern DevOps and DevSecOps practices across application development, Infrastructure as Code, CI/CD automation, security validation, containerization, Kubernetes deployment, runtime security, observability, repository governance, and cloud-native CI/CD.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Project Vision](#project-vision)
3. [Why the Project Is Built in Phases](#why-the-project-is-built-in-phases)
4. [Current Project Status](#current-project-status)
5. [Project Progress](#project-progress)
6. [Key Capabilities](#key-capabilities)
7. [Project Objectives](#project-objectives)
8. [Solution Architecture](#solution-architecture)
9. [DevSecOps Lifecycle](#devsecops-lifecycle)
10. [Technology Stack](#technology-stack)
11. [AWS Infrastructure](#aws-infrastructure)
12. [Repository Structure](#repository-structure)
13. [Project Workflow](#project-workflow)
14. [Implementation Phases](#implementation-phases)
15. [Phase 8 — Jenkins CI/CD & DevSecOps](#phase-8--jenkins-cicd--devsecops)
16. [Phase 9 — DevSecOps Governance & Security Hardening](#phase-9--devsecops-governance--security-hardening)
17. [Phase 9 Governance Model](#phase-9-governance-model)
18. [Security Controls](#security-controls)
19. [Jenkins Pipeline Model](#jenkins-pipeline-model)
20. [Pull Request Validation Flow](#pull-request-validation-flow)
21. [Branch Protection Strategy](#branch-protection-strategy)
22. [GitHub Webhook Integration](#github-webhook-integration)
23. [Phase 9 Evidence](#phase-9-evidence)
24. [Phase 10 — GitHub Actions CI/CD](#phase-10--github-actions-cicd)
25. [Phase 10 Architecture](#phase-10-architecture)
26. [GitHub Actions Workflow](#github-actions-workflow)
27. [GitHub OIDC Authentication](#github-oidc-authentication)
28. [ECR Image Traceability](#ecr-image-traceability)
29. [EKS Authorization Model](#eks-authorization-model)
30. [Cluster Platform Layer](#cluster-platform-layer)
31. [Phase 10 Verification Boundary](#phase-10-verification-boundary)
32. [Phase 10 Evidence](#phase-10-evidence)
33. [Documentation](#documentation)
34. [Screenshots](#screenshots)
35. [Running the Application Locally](#running-the-application-locally)
36. [Docker](#docker)
37. [CI/CD Architecture](#cicd-architecture)
38. [Infrastructure Lifecycle](#infrastructure-lifecycle)
39. [Phase 10 Completion](#phase-10-completion)
40. [Phase 11 — Complete DevSecOps Platform](#phase-11--complete-devsecops-platform)
41. [Phase 11 Roadmap](#phase-11-roadmap)
42. [Jenkins vs GitHub Actions](#jenkins-vs-github-actions)
43. [Final Project Architecture](#final-project-architecture)
44. [Project Status](#project-status)
45. [Author](#author)

---

# Project Overview

This repository demonstrates the design, implementation, validation, and documentation of an end-to-end **Node.js CI/CD and DevSecOps platform** using AWS, Jenkins, GitHub, GitHub Actions, Docker, Kubernetes, Terraform, and multiple security and observability technologies.

The project uses a Node.js monitoring application as the workload and progressively builds the delivery platform around it.

The implementation covers:

* Application development and refactoring
* Automated unit testing
* Docker containerization
* Infrastructure as Code with Terraform
* AWS networking and IAM
* Amazon ECR
* Amazon EKS
* Jenkins CI/CD
* GitHub Actions CI/CD
* SonarCloud SAST
* Snyk SCA
* Trivy container vulnerability scanning
* OWASP ZAP DAST
* Prometheus monitoring
* Grafana visualization
* Kubernetes Metrics Server
* Horizontal Pod Autoscaler
* GitHub Pull Request validation
* Gitleaks secrets detection
* Jenkins Multibranch Pipeline
* GitHub/Jenkins webhook integration
* GitHub commit status reporting
* `main` branch protection
* Required CI status checks
* Controlled merge workflow
* AWS OIDC authentication for GitHub Actions
* EKS Access Entry authorization
* Namespace-scoped Kubernetes authorization
* Infrastructure lifecycle management
* Evidence-driven technical documentation

Rather than implementing all capabilities simultaneously, the project is developed incrementally.

Each phase establishes and validates a specific engineering layer before the next layer is introduced.

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

The project additionally demonstrates that these principles can be implemented through more than one CI/CD platform:

```text
Jenkins CI/CD
      +
GitHub Actions CI/CD
```

The purpose is to demonstrate transferable DevOps engineering principles rather than dependence on a single CI/CD product.

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

The project completed the Jenkins-based end-to-end DevSecOps implementation and the repository governance layer surrounding it.

---

**Phase 10 — GitHub Actions CI/CD: ✅ Completed**

Phase 10 introduced GitHub Actions as a second CI/CD implementation alongside Jenkins and established a complete GitHub Actions application delivery path using AWS OIDC, Amazon ECR, Amazon EKS, and Kubernetes.

The completed Phase 10 implementation includes:

* GitHub Actions workflow execution
* Node.js dependency installation and Jest testing
* Docker image build and verification
* GitHub OIDC authentication
* Dedicated AWS IAM role assumption
* Immutable GitHub repository and branch identity in the OIDC trust policy
* Least-privilege AWS permissions
* Amazon ECR repository integration
* Commit-SHA-tagged container image publishing
* Amazon EKS authentication
* EKS Access Entry authorization
* Namespace-scoped Kubernetes application authorization
* Kubernetes Deployment
* Kubernetes LoadBalancer Service
* Horizontal Pod Autoscaler resource
* Deployment rollout verification
* Application health verification
* External browser verification
* Separate Metrics Server platform configuration
* Metrics Server and Metrics API verification evidence
* Phase 10 infrastructure teardown
* Phase 10 implementation and verification documentation

The Phase 10 architecture deliberately separates application CI/CD responsibilities from cluster-platform responsibilities.

```text
Application CI/CD
        │
        └── GitHub Actions
                │
                ├── OIDC
                ├── ECR
                └── EKS application deployment

Cluster Platform
        │
        └── infra-phase10-platform/
                │
                └── Metrics Server
```

The GitHub Actions application identity is therefore not responsible for installing cluster-level platform components.

---

## Phase 10 Verification Boundary

The HPA resource was successfully created and the Kubernetes Metrics API was subsequently verified through the separate platform layer.

However, actual CPU-based HPA scale-up and scale-down behavior was not marked as complete because observed scaling evidence has not yet been captured.

The Phase 10 completion boundary is therefore:

```text
GitHub Actions
      ↓
AWS OIDC
      ↓
IAM
      ↓
ECR
      ↓
EKS
      ↓
Kubernetes Deployment
      ↓
LoadBalancer
      ↓
Application Health
      ↓
HPA Resource
      ↓
Metrics Server Configuration
      ↓
Metrics API Evidence
```

Functional autoscaling validation is reserved for Phase 11.

The temporary Phase 10 AWS environment was destroyed after implementation and evidence collection to control ongoing cloud costs.

---

**Phase 11 — Complete DevSecOps Platform: 🟡 In Progress**

Phase 11 is the final integration and validation phase.

It will:

* Recreate the required AWS environment
* Validate infrastructure reproducibility
* Validate the cluster-platform layer
* Deploy the application through GitHub Actions
* Validate runtime behavior
* Demonstrate functional HPA scale-up
* Demonstrate functional HPA scale-down
* Validate integrated observability
* Review the complete security model
* Compare Jenkins and GitHub Actions objectively
* Validate the complete infrastructure lifecycle
* Produce the final architecture and engineering conclusion

---

# Project Progress

| Phase    | Area                                      |     Status     |
| -------- | ----------------------------------------- | :------------: |
| Phase 1  | Project Initialization                    |   ✅ Completed  |
| Phase 2  | Application Refactoring                   |   ✅ Completed  |
| Phase 3  | Unit Testing                              |   ✅ Completed  |
| Phase 4  | Docker Containerization                   |   ✅ Completed  |
| Phase 5  | AWS Infrastructure with Terraform         |   ✅ Completed  |
| Phase 6  | Jenkins Server Setup                      |   ✅ Completed  |
| Phase 7  | Jenkins Installation & Configuration      |   ✅ Completed  |
| Phase 8  | Jenkins CI/CD & DevSecOps Integration     |   ✅ Completed  |
| Phase 9  | DevSecOps Governance & Security Hardening |   ✅ Completed  |
| Phase 10 | GitHub Actions CI/CD                      |   ✅ Completed  |
| Phase 11 | Complete DevSecOps Platform               | 🟡 In Progress |

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
* GitHub Actions OIDC infrastructure

## CI/CD

* GitHub
* Jenkins
* Jenkins Multibranch Pipeline
* Declarative Jenkins Pipeline
* Pull Request-aware pipeline execution
* Automated deployment pipeline
* Pipeline-as-code
* GitHub Actions workflow-as-code
* AWS OIDC authentication
* ECR image publishing
* EKS application deployment

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
* GitHub OIDC
* IAM least-privilege permissions
* EKS Access Entry
* Namespace-scoped Kubernetes authorization

## Containerization

* Docker
* Multi-stage Docker build
* Non-root container execution
* Amazon ECR
* Commit-SHA image traceability
* Container image verification

## Kubernetes

* Amazon EKS
* Kubernetes Deployments
* Kubernetes Services
* LoadBalancer Service
* Horizontal Pod Autoscaler
* ServiceMonitor
* Metrics Server
* Metrics API
* Rollout verification
* Application health verification

## Observability

* Prometheus
* Grafana
* Application metrics
* Kubernetes monitoring
* Metrics Server
* Metrics API

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
* Implement GitHub OIDC authentication without long-lived AWS credentials.
* Use EKS Access Entry for Kubernetes authorization.
* Demonstrate both Jenkins and GitHub Actions CI/CD approaches.
* Separate application CI/CD permissions from cluster-platform responsibilities.
* Document an end-to-end DevSecOps engineering lifecycle.
* Demonstrate infrastructure provisioning, validation, teardown, and reproducibility.

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
      │       │        │                    ▼
      ▼       ▼        ▼               Full CI/CD
   Gitleaks  Jest  SonarCloud               │
                       │                    │
                       ▼                    │
                     Snyk                   │
              │                             ▼
              ▼                           Docker
        GitHub Status                       │
              │                             ▼
              ▼                           Trivy
      Branch Protection                     │
              │                             ▼
              ▼                           ECR
        Merge to main                       │
                                            ▼
                                           EKS
                                            │
                          ┌─────────────────┼────────────────┐
                          │                 │                │
                          ▼                 ▼                ▼
                     Kubernetes        Prometheus        OWASP ZAP
                     Verification           │
                          │                 ▼
                          │              Grafana
                          │
                          ▼
                  Running Application

Additional CI/CD implementation:

GitHub
   │
   ▼
GitHub Actions
   │
   ├── Node.js CI
   ├── Jest
   ├── Docker Build
   ├── OIDC
   ├── ECR
   └── EKS
```

The Phase 10 architecture additionally introduces a separate platform layer:

```text
                    Existing EKS Cluster
                            │
                            ▼
                 infra-phase10-platform/
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

The GitHub Actions lifecycle is:

```text
GitHub
   │
   ▼
GitHub Actions
   │
   ├── Checkout
   ├── Node.js 24
   ├── npm ci
   ├── Jest
   ├── Docker Build
   ├── Docker Verification
   │
   ▼
GitHub OIDC
   │
   ▼
AWS IAM Role
   │
   ├── ECR
   │
   └── EKS
          │
          ▼
   Kubernetes Deployment
          │
          ├── Service
          └── HPA
          │
          ▼
   Rollout Verification
          │
          ▼
   Application Health
```

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
| AWS Authentication  | GitHub OIDC                  | Short-lived AWS authentication   |
| Kubernetes Metrics  | Metrics Server               | Resource metrics API             |

---

# AWS Infrastructure

Terraform was used to provision the cloud infrastructure required by the project.

The original infrastructure included:

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

The isolated Phase 10 application infrastructure is represented separately under:

```text
infra-phase10/
```

Its responsibilities include the Phase 10 AWS environment required for:

* VPC networking
* Amazon ECR
* Amazon EKS
* IAM
* GitHub Actions OIDC
* GitHub Actions IAM role
* EKS Access Entry
* EKS authorization

The Phase 10 cluster-platform layer is isolated under:

```text
infra-phase10-platform/
```

Its responsibility is to manage cluster-level platform components such as Metrics Server.

The primary AWS region used during implementation was:

```text
us-east-1
```

## Important Infrastructure Lifecycle Note

The AWS environments were intentionally used as temporary implementation and validation environments.

After implementation, validation, evidence collection, and documentation, the AWS infrastructure was destroyed to avoid unnecessary ongoing cloud costs.

The Terraform configurations remain in the repository so the environments can be reproduced when required.

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
├── infra-phase10/
│   ├── provider.tf
│   ├── variables.tf
│   ├── terraform.tfvars
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
│   └── 10-github-actions-ci-cd/
│
├── .github/
│   └── workflows/
│       └── github-actions.yml
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
| **Phase 6 — Jenkins Server Setup**                      | Provisioned Jenkins EC2 infrastructure using Terraform.                                                                |    ✅   |
| **Phase 7 — Jenkins Installation & Configuration**      | Installed Jenkins and configured Docker, AWS CLI, kubectl, Helm, Trivy, credentials, and supporting tools.             |    ✅   |
| **Phase 8 — Jenkins CI/CD & DevSecOps**                 | Implemented the end-to-end Jenkins CI/CD and DevSecOps workflow.                                                       |    ✅   |
| **Phase 9 — DevSecOps Governance & Security Hardening** | Added PR validation, secrets detection, GitHub integration, status reporting, branch protection, and merge governance. |    ✅   |
| **Phase 10 — GitHub Actions CI/CD**                     | Implemented GitHub Actions CI/CD using OIDC, ECR, EKS, Kubernetes, and a separate Metrics Server platform layer.       |    ✅   |
| **Phase 11 — Complete DevSecOps Platform**              | Final integration, comparison, validation, architecture, lifecycle verification, and project conclusion.               |   🟡   |

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

The project includes security controls at multiple layers.

| Security Layer           | Control                           | Tool        |
| ------------------------ | --------------------------------- | ----------- |
| Source Code              | Static analysis                   | SonarCloud  |
| Source Code              | Quality Gate                      | SonarCloud  |
| Dependencies             | Dependency vulnerability analysis | Snyk        |
| Secrets                  | Secret detection                  | Gitleaks    |
| Container                | Image vulnerability scanning      | Trivy       |
| Runtime                  | Dynamic security testing          | OWASP ZAP   |
| Repository               | Pull Request validation           | Jenkins     |
| Repository               | Required CI status                | GitHub      |
| Repository               | Protected `main` branch           | GitHub      |
| AWS Authentication       | Short-lived OIDC authentication   | GitHub OIDC |
| AWS Authorization        | Dedicated IAM role                | AWS IAM     |
| Kubernetes Authorization | EKS Access Entry                  | Amazon EKS  |

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

## Pull Request Path

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

## Main / Normal Build Path

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

Phase 9 intentionally separates:

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
* Controlled merge workflow

The required Jenkins status check is:

```text
continuous-integration/jenkins/branch
```

## Human Review

Required review approval was **not enabled**.

This was an intentional project-level decision because this is a single-developer portfolio project.

The governance demonstration therefore focuses on automated validation and merge controls rather than requiring a second human reviewer.

---

# GitHub Webhook Integration

GitHub/Jenkins integration was configured to allow repository events to trigger and update the Jenkins Multibranch Pipeline workflow.

The Jenkins webhook endpoint used during live implementation was:

```text
http://JENKINS-PUBLIC-IP:8080/github-webhook/
```

The webhook delivery was successfully verified during live implementation.

> **Production consideration:** the live project environment used a temporary public Jenkins endpoint for portfolio validation. A production implementation should use HTTPS, appropriate authentication/secrets, network restrictions, and hardened Jenkins exposure.

---

# Phase 9 Evidence

Phase 9 implementation and validation evidence is stored under:

```text
screenshots/09-devsecops-governance-and-security-hardening/
```

Evidence includes screenshots covering:

* GitHub Pull Request
* Jenkins Multibranch Pipeline
* PR validation stages
* Successful validation
* GitHub status checks
* Branch protection
* Merge state
* Repository workflow

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

# Phase 10 — GitHub Actions CI/CD

Phase 10 introduced GitHub Actions as a second CI/CD implementation alongside the completed Jenkins platform.

The objective was not to replace Jenkins.

Instead, Phase 10 demonstrates that the project's application delivery objectives can also be implemented using GitHub-native CI/CD and AWS OIDC authentication.

The completed workflow is:

```text
GitHub
   │
   ▼
GitHub Actions
   │
   ├── Checkout
   ├── Node.js 24
   ├── npm ci
   ├── Jest
   ├── Docker Build
   └── Docker Verification
   │
   ▼
GitHub OIDC
   │
   ▼
AWS IAM Role
   │
   ├── Amazon ECR
   │
   └── Amazon EKS
          │
          ▼
   Kubernetes Deployment
          │
          ├── Service
          └── HPA
          │
          ▼
   Rollout Verification
          │
          ▼
   Application Health
```

---

# Phase 10 Architecture

Phase 10 is intentionally divided into two responsibilities.

## Application CI/CD

```text
GitHub
   │
   ▼
GitHub Actions
   │
   ▼
AWS OIDC
   │
   ▼
IAM Role
   │
   ├── ECR
   │
   └── EKS
          │
          ▼
   Kubernetes Application
```

## Cluster Platform

```text
Existing EKS Cluster
        │
        ▼
infra-phase10-platform/
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
HPA Metrics Dependency
```

The application CI/CD workflow does **not** install Metrics Server.

This separation prevents the GitHub Actions application identity from requiring cluster-administrator permissions merely to deploy the application.

---

# GitHub Actions Workflow

The Phase 10 workflow performs the following application-delivery responsibilities:

```text
Build and Test
      │
      ├── Checkout
      ├── Node.js 24
      ├── npm ci
      ├── Jest
      ├── Docker Build
      └── Docker Verification
              │
              ▼
       AWS Deployment Job
              │
              ├── AWS OIDC Authentication
              ├── AWS Identity Verification
              ├── ECR Verification
              ├── ECR Image Push
              ├── EKS Authentication
              ├── Kubernetes Authorization
              ├── Deployment
              ├── Service
              ├── HPA
              ├── Rollout Verification
              └── Application Health
```

The workflow uses the Git commit SHA as the container image identifier.

```text
Git Commit SHA
      │
      ▼
Docker Image Tag
      │
      ▼
Amazon ECR
      │
      ▼
Amazon EKS
```

This provides a direct relationship between:

```text
Git Commit
     ↓
Container Image
     ↓
Kubernetes Deployment
```

---

# GitHub OIDC Authentication

Phase 10 uses GitHub's OIDC federation model rather than long-lived AWS access keys.

The authentication model is:

```text
GitHub Actions
      │
      │ OIDC token
      ▼
AWS IAM OIDC Provider
      │
      ▼
Dedicated GitHub Actions IAM Role
      │
      ▼
Temporary AWS Credentials
      │
      ▼
ECR / EKS
```

The trust policy is restricted using the GitHub repository and branch identity.

The Phase 10 configuration also uses immutable GitHub repository identity information in the OIDC trust policy.

The workflow therefore avoids storing permanent AWS access keys as GitHub Actions credentials.

---

# ECR Image Traceability

The application image is tagged using the Git commit SHA.

Conceptually:

```text
GitHub Commit
     │
     ▼
c975353...
     │
     ▼
node-monitoring-app:c975353...
     │
     ▼
Amazon ECR
     │
     ▼
Amazon EKS
```

A previously verified Phase 10 deployment used commit:

```text
c97535309874695d6a8de6cb2b5c4d32bff55648
```

with the corresponding ECR image digest:

```text
sha256:4a3f65caaea7e2b9012e162368684e6d254a30f93061f928fe76d1544ba02941
```

This establishes immutable traceability between source code, container image, and deployment.

---

# EKS Authorization Model

Phase 10 uses Amazon EKS Access Entry for the GitHub Actions identity.

The model is:

```text
GitHub Actions
      │
      ▼
AWS OIDC
      │
      ▼
IAM Role
      │
      ▼
EKS Access Entry
      │
      ▼
Amazon EKS Policy Association
      │
      ▼
Namespace-Scoped Application Access
```

The GitHub Actions role was intentionally scoped to the Kubernetes application deployment responsibilities required by the workflow.

Cluster-wide node administration was not added merely for convenience.

For example, the workflow does not depend on cluster-scoped node listing.

This follows the principle that the CI/CD identity should receive the permissions required to deploy the application rather than broad cluster-administrator access.

---

# Cluster Platform Layer

Metrics Server is treated as a cluster-platform component rather than an application CI/CD component.

The platform configuration is isolated under:

```text
infra-phase10-platform/
```

The platform layer contains:

```text
provider.tf
variables.tf
metrics-server.tf
.terraform.lock.hcl
```

Terraform manages the Helm release.

The Metrics Server chart is pinned to:

```text
3.13.0
```

The intended architecture is:

```text
EKS Cluster
    │
    ▼
Terraform Platform Root
    │
    ▼
Helm Provider
    │
    ▼
Metrics Server Helm Release
    │
    ▼
Metrics API
    │
    ▼
HPA
```

The platform Terraform configuration was validated locally.

Live Terraform plan/apply against an existing EKS cluster is intentionally part of Phase 11 because the Phase 10 AWS environment was destroyed after evidence collection.

---

# Phase 10 Verification Boundary

Phase 10 established and verified:

| Capability                                 | Phase 10 Status |
| ------------------------------------------ | :-------------: |
| GitHub Actions workflow                    |        ✅        |
| Node.js dependency installation            |        ✅        |
| Jest testing                               |        ✅        |
| Docker build                               |        ✅        |
| Docker verification                        |        ✅        |
| GitHub OIDC authentication                 |        ✅        |
| IAM role assumption                        |        ✅        |
| ECR integration                            |        ✅        |
| SHA-tagged image                           |        ✅        |
| EKS authentication                         |        ✅        |
| EKS Access Entry                           |        ✅        |
| Namespace-scoped application authorization |        ✅        |
| Kubernetes Deployment                      |        ✅        |
| Kubernetes Service                         |        ✅        |
| LoadBalancer exposure                      |        ✅        |
| Rollout verification                       |        ✅        |
| Application health verification            |        ✅        |
| Browser verification                       |        ✅        |
| HPA resource creation                      |        ✅        |
| Metrics Server configuration               |        ✅        |
| Metrics API evidence                       |        ✅        |
| Functional HPA scale-up                    |     Phase 11    |
| Functional HPA scale-down                  |     Phase 11    |
| Final integrated observability validation  |     Phase 11    |
| Final infrastructure lifecycle validation  |     Phase 11    |

The distinction is important:

**HPA resource creation is not the same as demonstrating functional autoscaling.**

Phase 11 will provide the controlled runtime experiment required to demonstrate actual scale-up and scale-down behavior.

---

# Phase 10 Evidence

Phase 10 evidence is stored under:

```text
screenshots/10-github-actions-ci-cd/
```

The captured evidence includes:

```text
01-github-actions-terraform-plan.png
02-github-repository-secret-config.png
03-github-actions-success.png
04-aws-deployment-successful-job.png
05-github-actions-ecr-eks-success.png
06-ecr-sha-tagged-image.png
07-eks-deployment-and-pods.png
08-eks-loadbalancer-service.png
09-application-health.png
10-application-health-browser-render.png
11-hpa-created-metrics-unavailable.png
12-metrics-server-and-api-success.png
13-metrics-server-pod-metrics.png
```

The evidence demonstrates the progression from GitHub Actions execution through AWS authentication, ECR/EKS deployment, Kubernetes runtime verification, and the separate Metrics Server platform verification.

The Metrics Server evidence does **not** imply that the GitHub Actions application workflow installed Metrics Server.

---

# Documentation

Detailed implementation documentation is available in the `docs/` directory.

| Document                                            | Description                                                                                                               |
| --------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| `01-project-initialization.md`                      | Project foundation, repository, environment, and initial roadmap                                                          |
| `02-application-refactoring.md`                     | Node.js application restructuring and production-oriented improvements                                                    |
| `03-unit-testing.md`                                | Jest and Supertest automated testing                                                                                      |
| `04-containerization.md`                            | Docker containerization                                                                                                   |
| `05-terraform-infrastructure.md`                    | AWS infrastructure provisioning with Terraform                                                                            |
| `06-jenkins-server-setup.md`                        | Jenkins EC2 infrastructure provisioning                                                                                   |
| `07-jenkins-installation.md`                        | Jenkins installation and DevOps toolchain configuration                                                                   |
| `08-jenkins-ci-cd-devsecops-pipeline.md`            | End-to-end Jenkins CI/CD and DevSecOps implementation                                                                     |
| `09-devsecops-governance-and-security-hardening.md` | Pull Request validation, Gitleaks, GitHub/Jenkins integration, branch protection, governance, and Phase 10 transition     |
| `10-github-actions-ci-cd.md`                        | GitHub Actions CI/CD, AWS OIDC, ECR, EKS, Kubernetes deployment, HPA boundary, and separate Metrics Server platform layer |
| `11-complete-devsecops-platform.md`                 | Final Phase 11 integration, validation, comparison, architecture, lifecycle, and project conclusion                       |

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
├── 09-devsecops-governance-and-security-hardening/
└── 10-github-actions-ci-cd/
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

The production-oriented Dockerfile uses a multi-stage build and runs the application as the non-root `node` user.

---

# CI/CD Architecture

The project demonstrates two CI/CD implementations.

## Jenkins

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

## GitHub Actions

```text
                    GitHub
                       │
                       ▼
                GitHub Actions
                       │
             ┌─────────┴─────────┐
             │                   │
             ▼                   ▼
       Build / Test         AWS Deployment
             │                   │
             ├── Node.js         ├── OIDC
             ├── npm ci          ├── IAM
             ├── Jest            ├── ECR
             └── Docker          └── EKS
                                      │
                                      ▼
                                 Kubernetes
                                      │
                                      ├── Deployment
                                      ├── Service
                                      └── HPA
```

The two implementations use the same application and target the same broader software-delivery objectives while using different CI/CD execution models.

---

# Infrastructure Lifecycle

The project uses Terraform to make infrastructure reproducible.

The Phase 11 target lifecycle is:

```text
Terraform Plan
      │
      ▼
Terraform Apply
      │
      ▼
Platform Configuration
      │
      ▼
Application Deployment
      │
      ▼
Runtime Verification
      │
      ▼
Evidence Capture
      │
      ▼
Documentation
      │
      ▼
Terraform Destroy
      │
      ▼
AWS Resource Verification
```

For temporary portfolio environments, the infrastructure is intentionally destroyed after validation.

This provides two benefits:

1. Avoids unnecessary ongoing AWS costs.
2. Demonstrates that the environment can be recreated from Infrastructure as Code rather than depending on manually configured resources.

---

# Phase 10 Completion

Phase 10 is considered complete based on its defined implementation scope and captured verification evidence.

The completed Phase 10 path is:

```text
GitHub Actions
      ↓
Node.js CI
      ↓
Docker Build
      ↓
AWS OIDC
      ↓
IAM
      ↓
ECR
      ↓
EKS
      ↓
Kubernetes Deployment
      ↓
LoadBalancer
      ↓
Application Health
      ↓
HPA Resource
      ↓
Metrics Server Platform Configuration
      ↓
Metrics API Evidence
```

The following items are intentionally deferred to Phase 11:

* Live recreation of the complete environment
* Live Terraform plan/apply against the recreated EKS cluster
* Functional HPA scale-up
* Functional HPA scale-down
* Final integrated observability validation
* Final security integration review
* Final Jenkins vs GitHub Actions comparison
* Complete infrastructure lifecycle validation
* Final project documentation

Therefore, the Phase 10 completion boundary does not claim that functional autoscaling has already been demonstrated.

---

# Phase 11 — Complete DevSecOps Platform

Phase 11 is the final integration, validation, and conclusion phase defined by the project roadmap.

The objective is to bring the previously completed layers together into one final end-to-end validation.

---

# Phase 11 Roadmap

## 11.1 — Recreate the Phase 10 Environment

The Phase 10 AWS environment will be recreated using:

```text
infra-phase10/
        │
        ▼
AWS VPC
        │
        ▼
ECR
        │
        ▼
EKS
        │
        ▼
IAM / OIDC
        │
        ▼
EKS Access Entry
```

The objective is to validate that the Phase 10 infrastructure remains reproducible after the previous environment was destroyed.

---

## 11.2 — Validate the Cluster Platform Layer

The cluster-platform configuration will be validated against the recreated EKS cluster:

```text
infra-phase10-platform/
        │
        ▼
Terraform Plan
        │
        ▼
Terraform Apply
        │
        ▼
Helm
        │
        ▼
Metrics Server
        │
        ▼
Metrics API
```

This will provide live validation of the previously established platform configuration.

---

## 11.3 — Validate GitHub Actions Application Delivery

The GitHub Actions application workflow will then deploy the application:

```text
GitHub
   ↓
GitHub Actions
   ↓
OIDC
   ↓
IAM
   ↓
ECR
   ↓
EKS
   ↓
Kubernetes
   ↓
Application
```

The application workflow remains separate from the cluster-platform installation.

---

## 11.4 — Validate Runtime Behavior

The final runtime validation will include:

* Kubernetes pods
* Kubernetes Deployment
* LoadBalancer Service
* `/health`
* `/metrics`
* Prometheus
* Grafana
* Metrics Server
* Metrics API
* HPA

---

## 11.5 — Functional HPA Validation

The HPA will be tested using controlled application load.

The intended experiment is:

```text
Normal Load
    ↓
2 replicas

Controlled CPU Load
    ↓
CPU utilization increases
    ↓
HPA detects target breach
    ↓
Replica count increases

Load Stops
    ↓
CPU utilization decreases
    ↓
HPA stabilization
    ↓
Replica count decreases
```

Both scale-up and scale-down will be supported by captured runtime evidence.

This is deliberately separate from merely creating the HPA object.

---

## 11.6 — Security Integration Review

The final security review will cover:

* Gitleaks
* Jest
* SonarCloud
* Snyk
* Trivy
* OWASP ZAP
* AWS IAM
* GitHub OIDC
* EKS Access Entry
* Kubernetes namespace authorization
* Repository governance
* Branch protection
* Required CI status checks

The purpose is to document how the individual controls form a complete DevSecOps security model.

---

## 11.7 — Jenkins vs GitHub Actions

The final project will objectively compare the two CI/CD implementations.

The comparison will cover:

| Area                       | Jenkins                            | GitHub Actions                        |
| -------------------------- | ---------------------------------- | ------------------------------------- |
| Execution model            | Jenkins pipeline                   | GitHub workflow                       |
| Configuration              | `Jenkinsfile`                      | Workflow YAML                         |
| Repository integration     | GitHub integration/webhook         | Native GitHub integration             |
| AWS authentication         | Jenkins AWS credentials/role model | GitHub OIDC                           |
| Application deployment     | ECR/EKS                            | ECR/EKS                               |
| PR validation              | Jenkins Multibranch                | GitHub Actions workflow capabilities  |
| Infrastructure requirement | Jenkins server                     | GitHub-hosted workflow execution      |
| Operational considerations | Jenkins administration             | GitHub Actions configuration          |
| Security model             | Jenkins credentials and controls   | OIDC and repository/workflow controls |

The comparison is intended to describe documented engineering differences rather than declare one platform universally superior.

---

## 11.8 — Infrastructure Lifecycle Validation

The complete lifecycle will be demonstrated:

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
Observability Validation
      ↓
Evidence Capture
      ↓
Final Documentation
      ↓
Terraform Destroy
      ↓
AWS Resource Verification
```

---

## 11.9 — Final Documentation

The final Phase 11 document will be:

```text
docs/11-complete-devsecops-platform.md
```

It will contain:

* Final architecture
* Complete DevSecOps lifecycle
* Jenkins implementation
* GitHub Actions implementation
* PR governance
* Security controls
* Container security
* Amazon ECR
* Amazon EKS
* Kubernetes
* Prometheus
* Grafana
* Metrics Server
* HPA
* OWASP ZAP
* Infrastructure lifecycle
* Jenkins vs GitHub Actions comparison
* Lessons learned
* Final project outcome

---

# Final Project Architecture

The intended final architecture is:

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
        Jenkins PR Validation             Jenkins
                │                             │
        ┌───────┼────────┐                    │
        │       │        │                    ▼
        ▼       ▼        ▼              Full CI/CD
     Gitleaks  Jest  SonarCloud               │
                       │                      │
                       ▼                      ▼
                      Snyk                  Docker
                │                             │
                ▼                             ▼
         GitHub Status                       Trivy
                │                             │
                ▼                             ▼
       Branch Protection                     ECR
                │                             │
                ▼                             ▼
          Merge to main                     EKS
                                              │
                         ┌────────────────────┼───────────────────┐
                         │                    │                   │
                         ▼                    ▼                   ▼
                   Kubernetes             Prometheus          OWASP ZAP
                   Application                │
                         │                    ▼
                         │                 Grafana
                         │
                         ▼
                       HPA
                         │
                         ▼
                  Metrics Server
                         │
                         ▼
                    Metrics API


Additional CI/CD implementation:

GitHub
   │
   ▼
GitHub Actions
   │
   ├── Node.js CI
   ├── Jest
   ├── Docker
   ├── OIDC
   ├── ECR
   └── EKS
          │
          ▼
   Kubernetes Application
```

The architecture intentionally separates:

```text
Application Delivery
        │
        └── GitHub Actions / Jenkins
                │
                └── Application Deployment

Cluster Platform
        │
        └── Terraform + Helm
                │
                └── Metrics Server
```

This separation provides a clearer security boundary between application deployment permissions and cluster-platform administration.

---

# Future Project Roadmap

The current roadmap is:

| Phase        | Documentation                                       | Scope                                                                                                            |     Status     |
| ------------ | --------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------- | :------------: |
| **Phase 9**  | `09-devsecops-governance-and-security-hardening.md` | PR validation, Gitleaks, GitHub/Jenkins integration, branch protection, governance                               |   ✅ Complete   |
| **Phase 10** | `10-github-actions-ci-cd.md`                        | GitHub Actions CI/CD, OIDC, ECR, EKS, Kubernetes deployment, HPA boundary, Metrics Server platform configuration |   ✅ Complete   |
| **Phase 11** | `11-complete-devsecops-platform.md`                 | Final integration, architecture, validation, comparison, lifecycle verification, and project conclusion          | 🟡 In Progress |

---

# Project Status

## Completed Phases

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
Phase 11 → In Progress
```

## Phase 10 Completion Boundary

```text
GitHub Actions
      ↓
AWS OIDC
      ↓
IAM
      ↓
ECR
      ↓
EKS
      ↓
Kubernetes Deployment
      ↓
LoadBalancer
      ↓
Application Health
      ↓
HPA Resource
      ↓
Metrics Server Configuration
      ↓
Metrics API Evidence
```

## Phase 11 Completion Target

```text
Infrastructure Recreation
      ↓
Platform Deployment
      ↓
Application Deployment
      ↓
Runtime Verification
      ↓
Functional HPA Scale-Up
      ↓
Functional HPA Scale-Down
      ↓
Observability Validation
      ↓
Security Integration Review
      ↓
Jenkins vs GitHub Actions
      ↓
Infrastructure Lifecycle Validation
      ↓
Final Documentation
      ↓
Teardown Verification
      ↓
Phase 11 Complete
```

---

# Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Passionate about building secure, automated, scalable, and cloud-native infrastructure using DevOps and DevSecOps practices.

* GitHub: `Jefferson-ohis1`
* LinkedIn: `Jefferson Ohis`

---

> **Project Philosophy:** Build incrementally. Validate each layer. Capture evidence. Document the implementation. Automate security. Govern changes. Maintain reproducibility. Continuously improve.
