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


> A hands-on portfolio project demonstrating an end-to-end Node.js CI/CD and DevSecOps platform using AWS, Terraform, Jenkins, GitHub Actions, Docker, Kubernetes, security automation, repository governance, observability, autoscaling, and infrastructure lifecycle management.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Project Vision](#project-vision)
3. [Current Project Status](#current-project-status)
4. [Project Progress](#project-progress)
5. [Key Capabilities](#key-capabilities)
6. [Solution Architecture](#solution-architecture)
7. [DevSecOps Lifecycle](#devsecops-lifecycle)
8. [Observability Evolution](#observability-evolution)
9. [Technology Stack](#technology-stack)
10. [AWS Infrastructure](#aws-infrastructure)
11. [Repository Structure](#repository-structure)
12. [Project Workflow](#project-workflow)
13. [Implementation Phases](#implementation-phases)
14. [Phase 8 — Jenkins CI/CD & DevSecOps](#phase-8--jenkins-cicd--devsecops)
15. [Phase 9 — DevSecOps Governance & Security Hardening](#phase-9--devsecops-governance--security-hardening)
16. [Phase 10 — GitHub Actions CI/CD](#phase-10--github-actions-cicd)
17. [Phase 11 — Complete DevSecOps Platform](#phase-11--complete-devsecops-platform)
18. [Jenkins vs GitHub Actions](#jenkins-vs-github-actions)
19. [Security Model](#security-model)
20. [Running the Application Locally](#running-the-application-locally)
21. [Docker](#docker)
22. [Infrastructure Lifecycle](#infrastructure-lifecycle)
23. [Documentation](#documentation)
24. [Evidence](#evidence)
25. [Final Project Status](#final-project-status)
26. [Author](#author)

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
* Prometheus
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

The architecture also evolved during the project. The original Jenkins implementation combined application delivery and observability within the Jenkins-hosted environment. When GitHub Actions was introduced in Phase 10, the architecture was refined to separate **application delivery responsibilities** from **Kubernetes cluster-platform responsibilities**.

---

# Project Vision

The project is designed to demonstrate more than individual DevOps and DevSecOps tools.

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
Observability / Metrics
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

The project demonstrates two CI/CD implementations:

```text
                 Application Delivery
                         │
              ┌──────────┴──────────┐
              │                     │
              ▼                     ▼
           Jenkins           GitHub Actions
```

The objective is to demonstrate transferable DevOps and DevSecOps engineering principles rather than dependence on a single CI/CD platform.

The project also demonstrates how the architecture can evolve as requirements change:

```text
Jenkins-based platform
        │
        ├── CI/CD
        ├── Security
        ├── AWS deployment
        └── Prometheus + Grafana observability
                │
                ▼
      GitHub Actions introduced
                │
                ├── Application CI/CD
                │
                └── Separate cluster-platform layer
                         │
                         └── Terraform + Helm
                                  │
                                  └── Metrics Server
```

---

# Current Project Status

## Overall Status

**Phase 11 — Complete DevSecOps Platform: ✅ Completed**

**Final release:** `v0.11.0`
**Primary branch:** `main`

The final release represents the completed implementation checkpoint for the project.q

The project's planned implementation and validation phases have been completed.

The final implementation included:

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

This provided evidence of both workload-driven scale-up and scale-down behavior.

The temporary AWS environment was subsequently destroyed after validation and evidence collection.

---

# Project Progress

| Phase    | Area                                 | Status |
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

# Key Capabilities

## Application

* Node.js
* Express.js
* Prometheus-compatible application metrics
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
* Namespace-scoped Kubernetes authorization

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
* Kubernetes Deployments
* Kubernetes Services
* LoadBalancer Service
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
* Application health verification

---

# Solution Architecture

The final project contains two complementary CI/CD implementations and an evolved observability/platform architecture.

## Jenkins Architecture

The Jenkins implementation was the original end-to-end CI/CD platform.

It combined application delivery, security validation, Kubernetes deployment, runtime verification, and observability within the Jenkins-hosted environment.

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
   ├── Prometheus
   ├── Grafana
   └── OWASP ZAP
```

### Jenkins Observability

During the Jenkins implementation, the Jenkins server was also used as the host for the project's monitoring stack.

The Node.js application exposed Prometheus-compatible metrics through:

```text
/metrics
```

Prometheus was configured as the metrics collection component, while Grafana provided visualization of the collected metrics.

The observability flow was therefore:

```text
Node.js Application
        │
        │ /metrics
        ▼
   Prometheus
        │
        ▼
     Grafana
        │
        ▼
Monitoring Dashboard
```

This formed the project's original application observability implementation.

The Jenkins-based environment therefore demonstrated not only CI/CD and security automation, but also the integration of application monitoring into the delivery platform.

---

## GitHub Actions Architecture

Phase 10 introduced GitHub Actions as a second CI/CD implementation.

The application delivery path became:

```text
GitHub
   │
   ▼
GitHub Actions
   │
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

Unlike the original Jenkins implementation, Phase 10 deliberately separated application delivery from cluster-platform management.

GitHub Actions became responsible for delivering the application.

Cluster-level dependencies became the responsibility of a separate platform layer.

---

## Cluster Platform Architecture

The Phase 10/11 Kubernetes platform layer was managed separately from the application deployment workflow.

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

The platform configuration is represented by:

```text
infra-phase10-platform/
```

The application CI/CD identity does not install Metrics Server.

Instead:

```text
Application Delivery
        │
        └── GitHub Actions
                │
                └── Deploy application

Cluster Platform
        │
        └── Terraform + Helm
                │
                └── Manage Metrics Server
```

This separation was introduced when GitHub Actions CI/CD was implemented.

It was not the architecture used by the original Jenkins observability implementation.

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
Observability / Metrics
      ↓
Autoscaling
      ↓
Governance
      ↓
Infrastructure Teardown
      ↓
Resource Verification
```

The architecture evolved across the lifecycle.

### Original Jenkins Model

```text
Jenkins Server
     │
     ├── CI/CD
     ├── Security Validation
     ├── AWS Deployment
     ├── Kubernetes Verification
     ├── Prometheus
     └── Grafana
```

### GitHub Actions Model

```text
GitHub Actions
     │
     └── Application CI/CD
              │
              ├── ECR
              ├── EKS
              └── Kubernetes Application Resources

Separate Platform Layer
     │
     └── Terraform + Helm
              │
              └── Metrics Server
```

This evolution demonstrates the difference between:

* **Application delivery**
* **Application observability**
* **Cluster resource metrics**
* **Cluster-platform management**

---

# Observability Evolution

Observability is an important part of the project's architectural history.

The project did not use a single monitoring mechanism throughout all phases. The monitoring architecture evolved as the CI/CD platform evolved.

## Stage 1 — Jenkins-Based Observability

During the Jenkins implementation, Prometheus and Grafana were installed as part of the Jenkins-hosted environment.

The Node.js application exposed Prometheus-compatible metrics:

```text
Node.js Application
       │
       ▼
    /metrics
       │
       ▼
   Prometheus
       │
       ▼
    Grafana
```

### Prometheus

Prometheus was responsible for collecting application metrics.

### Grafana

Grafana was used to visualize the collected metrics through monitoring dashboards.

This provided application-level observability alongside the Jenkins CI/CD platform.

The Jenkins architecture therefore combined:

```text
CI/CD
Security
Deployment
Monitoring
Visualization
```

within the same overall Jenkins-hosted environment.

---

## Stage 2 — GitHub Actions and Platform Separation

When GitHub Actions was introduced in Phase 10, the project architecture was deliberately refined.

Application CI/CD became the responsibility of GitHub Actions:

```text
GitHub
   ↓
GitHub Actions
   ↓
ECR
   ↓
EKS
   ↓
Kubernetes Application
```

Cluster-level platform management became a separate responsibility:

```text
Terraform
   ↓
Helm
   ↓
Metrics Server
   ↓
Metrics API
```

This separation prevents the application deployment workflow from also needing to administer cluster-level platform components.

---

## Prometheus/Grafana vs Metrics Server

These components serve different purposes.

| Component      | Primary Purpose                 | Project Role                            |
| -------------- | ------------------------------- | --------------------------------------- |
| Prometheus     | Metrics collection and querying | Application observability               |
| Grafana        | Metrics visualization           | Monitoring dashboards                   |
| `/metrics`     | Application metrics endpoint    | Exposes application metrics             |
| Metrics Server | Kubernetes resource metrics     | Supplies resource metrics to Kubernetes |
| Metrics API    | Kubernetes resource metrics API | Provides node/pod resource metrics      |
| HPA            | Workload autoscaling            | Uses resource metrics for scaling       |

The distinction is important:

```text
Application Observability
        │
        ├── /metrics
        │
        ├── Prometheus
        │
        └── Grafana


Kubernetes Resource Metrics
        │
        ├── Metrics Server
        │
        ├── Metrics API
        │
        └── HPA
```

Prometheus and Grafana were part of the original Jenkins-based monitoring architecture.

Metrics Server was introduced later as part of the separately managed Kubernetes platform layer for the GitHub Actions/EKS architecture.

The presence of Metrics Server therefore does not mean that it replaced Prometheus and Grafana. The components address different monitoring and platform requirements.

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
| Monitoring         | Prometheus       | Application metrics collection    |
| Visualization      | Grafana          | Metrics visualization             |
| Kubernetes Metrics | Metrics Server   | Kubernetes resource metrics API   |
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

The Phase 10/11 platform layer therefore introduced a more explicit distinction between AWS/application infrastructure and Kubernetes cluster-platform components.

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

## Infrastructure Directory Roles

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

# Phase-by-Phase Summary

## Phase 01 — Project Initialization

Established the project repository, application baseline, initial structure, implementation roadmap, and documentation approach.

**Focus:**

* Repository initialization
* Application baseline
* Project structure
* Initial documentation
* Implementation roadmap

Documentation:

```text
docs/01-project-initialization.md
```

---

## Phase 02 — Application Refactoring

Refactored the Node.js application into the structure used by the subsequent testing, containerization, CI/CD, and monitoring phases.

**Focus:**

* Node.js application structure
* Express.js application
* Health endpoint
* Metrics endpoint
* Application organization

Documentation:

```text
docs/02-application-refactoring.md
```

---

## Phase 03 — Unit Testing

Introduced automated application testing using Jest and Supertest.

**Focus:**

* Automated unit/API testing
* Application behavior verification
* Test coverage
* CI-ready test execution

Documentation:

```text
docs/03-unit-testing.md
```

---

## Phase 04 — Containerization

Containerized the application using Docker.

**Focus:**

* Dockerfile
* Multi-stage image build
* Application packaging
* Container runtime validation
* Non-root execution

Documentation:

```text
docs/04-containerization.md
```

---

## Phase 05 — Terraform Infrastructure

Introduced AWS Infrastructure as Code using Terraform.

**Focus:**

* VPC
* Networking
* Security Groups
* IAM
* Amazon ECR
* Amazon EKS
* Jenkins infrastructure
* Reproducible infrastructure configuration

Documentation:

```text
docs/05-terraform-infrastructure.md
```

---

## Phase 06 — Jenkins Server Setup

Established the AWS-hosted Jenkins server infrastructure.

**Focus:**

* Jenkins EC2 infrastructure
* AWS networking
* Security configuration
* Jenkins server foundation

Documentation:

```text
docs/06-jenkins-server-setup.md
```

---

## Phase 07 — Jenkins Installation

Installed and configured Jenkins and its supporting toolchain.

**Focus:**

* Jenkins installation
* Jenkins configuration
* Build tooling
* Pipeline prerequisites

Documentation:

```text
docs/07-jenkins-installation.md
```

---

# Phase 8 — Jenkins CI/CD & DevSecOps

Phase 8 established the project's original end-to-end Jenkins-based CI/CD and DevSecOps delivery implementation.

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

## Jenkins Observability Stack

As part of the Jenkins implementation, the Jenkins server hosted the project's observability tooling.

The application exposed Prometheus-compatible metrics through:

```text
/metrics
```

Prometheus collected the application metrics.

Grafana provided visualization of those metrics.

The monitoring flow was:

```text
Node.js Application
        │
        ▼
     /metrics
        │
        ▼
    Prometheus
        │
        ▼
     Grafana
        │
        ▼
Monitoring Visualization
```

This allowed the Jenkins-based platform to demonstrate:

* Application delivery
* Application monitoring
* Metrics collection
* Metrics visualization
* Security validation
* Kubernetes deployment
* Runtime verification

The Prometheus/Grafana implementation therefore belongs specifically to the Jenkins-based observability architecture established during the earlier phases.

Documentation:

```text
docs/08-jenkins-ci-cd-devsecops-pipeline.md
```

---

# Phase 9 — DevSecOps Governance & Security Hardening

Phase 9 Added repository governance and Pull Request security controls around the Jenkins platform.

The governance flow was:

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

The Jenkins platform remained the primary CI/CD implementation at this stage.

Documentation:

```text
docs/09-devsecops-governance-and-security-hardening.md
```

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

## Architectural Change Introduced in Phase 10

A significant architectural refinement occurred when GitHub Actions was introduced.

The project deliberately separated:

```text
Application Delivery
```

from:

```text
Cluster Platform Management
```

GitHub Actions was responsible for application delivery:

```text
GitHub Actions
      ↓
     ECR
      ↓
     EKS
      ↓
Kubernetes Application
```

Cluster-level platform components were managed separately:

```text
Terraform
    ↓
   Helm
    ↓
Metrics Server
```

This was a deliberate Phase 10/11 architectural decision.

It should not be interpreted as describing the architecture of the earlier Jenkins implementation, where Prometheus and Grafana were installed within the Jenkins-hosted environment as part of the project's monitoring stack.

## Metrics Server Boundary

Metrics Server was deliberately kept outside the GitHub Actions application workflow.

The GitHub Actions workflow does not install Metrics Server.

Instead:

```text
GitHub Actions
      │
      └── Application CI/CD

Terraform + Helm
      │
      └── Kubernetes Platform
              │
              └── Metrics Server
```

This creates a clearer responsibility boundary between application deployment and cluster administration.

Documentation:

```text
docs/10-github-actions-ci-cd.md
```
---

# Phase 11 — Complete DevSecOps Platform

Phase 11 completed the final integration and validation scope.

The phase brought together:

* GitHub Actions CI/CD
* AWS OIDC
* IAM
* Amazon ECR
* Amazon EKS
* Kubernetes
* Terraform
* Helm
* Metrics Server
* Metrics API
* Application metrics
* HPA
* Runtime validation
* Infrastructure teardown
* Evidence-driven documentation

## Platform Layer

Terraform managed Metrics Server through Helm:

```text
Terraform
   ↓
Helm
   ↓
Metrics Server
   ↓
Metrics API
```

The Metrics Server Helm chart was pinned to:

```text
3.13.1
```

The packaged Metrics Server version was:

```text
0.8.1
```

The platform configuration included:

* Metrics Server
* Kubernetes Metrics API
* Two Metrics Server replicas
* APIService configuration
* Pod disruption budget
* Terraform-managed Helm release
* Reproducible platform configuration

The platform was successfully applied and verified.

## Why Metrics Server Was Required

Metrics Server provides Kubernetes resource metrics used by Kubernetes components such as the Horizontal Pod Autoscaler.

The relationship is:

```text
Kubernetes Nodes / Pods
          │
          ▼
    Metrics Server
          │
          ▼
     Metrics API
          │
          ▼
         HPA
          │
          ▼
Application Replica Scaling
```

This is different from the Prometheus/Grafana monitoring architecture used earlier with Jenkins.

Prometheus and Grafana provided application observability and visualization.

Metrics Server provided the Kubernetes resource metrics required for the HPA validation.

---

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

The deployment included:

* Container image publishing
* Commit-SHA traceability
* EKS authentication
* Kubernetes authorization
* Deployment
* Service
* HPA
* Rollout verification
* Application health verification

---

## Runtime Verification

The application was verified through:

```text
/
 /health
 /metrics
```

The `/health` endpoint provided application health verification.

The `/metrics` endpoint exposed Prometheus-compatible application metrics.

The application therefore retained the observability capability established earlier with the Jenkins/Prometheus/Grafana implementation even though the Phase 10/11 platform introduced a separate Metrics Server layer for Kubernetes resource metrics.

---

## HPA Verification

Functional CPU-based autoscaling was demonstrated:

```text
2 replicas
    ↓
4 replicas
    ↓
5 replicas
    ↓
2 replicas
```

This demonstrated:

* Initial workload state
* HPA scale-up
* Continued scaling under increased workload
* HPA scale-down after workload reduction

The experiment therefore went beyond proving that an HPA object existed.

It demonstrated observed workload-driven scaling behavior.

Documentation:

```text
docs/11-complete-devsecops-platform.md
```

---

## Final Architecture

The final architecture can be represented as:

```text
                         GitHub
                           │
             ┌─────────────┴─────────────┐
             │                           │
             ▼                           ▼
        Pull Requests              Main Branch
             │                           │
             ▼                           ▼
        Jenkins PR                 GitHub Actions
        Validation                      │
             │                          │
             ├── Gitleaks               ├── Jest
             ├── Jest                   ├── Docker
             ├── SonarCloud             ├── OIDC
             └── Snyk                   ├── ECR
                                        └── EKS
                                            │
                                            ▼
                                      Kubernetes
                                            │
                              ┌─────────────┼─────────────┐
                              │             │             │
                              ▼             ▼             ▼
                         Deployment      Service         HPA
                              │                           │
                              ▼                           │
                         Application                     │
                              │                           │
                         ┌────┴────┐                      │
                         │         │                      │
                         ▼         ▼                      │
                      /health   /metrics                  │
                                  │                       │
                                  ▼                       │
                              Prometheus                  │
                                  │                       │
                                  ▼                       │
                               Grafana                    │
                                                          │
                              Separate Platform Layer     │
                                      │                   │
                              Terraform + Helm            │
                                      │                   │
                                      ▼                   │
                               Metrics Server ────────────┘
                                      │
                                      ▼
                                 Metrics API
```

The architecture intentionally distinguishes:

```text
Application Observability
        │
        ├── /metrics
        ├── Prometheus
        └── Grafana

Kubernetes Resource Metrics
        │
        ├── Metrics Server
        └── Metrics API

Application Delivery
        │
        ├── Jenkins
        └── GitHub Actions

Cluster Platform Management
        │
        └── Terraform + Helm
```

---

## Teardown

The temporary environment was destroyed after validation.

Independent AWS checks confirmed the expected infrastructure cleanup.

The project therefore demonstrated not only provisioning and deployment, but also controlled infrastructure lifecycle management.

---

# Jenkins vs GitHub Actions

The project demonstrates both platforms without treating either as universally superior.

| Area                   | Jenkins                                    | GitHub Actions                                                               |
| ---------------------- | ------------------------------------------ | ---------------------------------------------------------------------------- |
| Pipeline definition    | `Jenkinsfile`                              | Workflow YAML                                                                |
| Repository integration | GitHub integration / Multibranch           | Native GitHub                                                                |
| PR validation          | Multibranch Pipeline                       | Workflow-based                                                               |
| Testing                | Jest                                       | Jest                                                                         |
| Container build        | Docker                                     | Docker                                                                       |
| Registry               | Amazon ECR                                 | Amazon ECR                                                                   |
| Kubernetes             | Amazon EKS                                 | Amazon EKS                                                                   |
| AWS authentication     | Jenkins credential / role model            | GitHub OIDC                                                                  |
| Infrastructure         | Jenkins server                             | GitHub-hosted runners                                                        |
| Application deployment | EKS                                        | EKS                                                                          |
| Observability model    | Jenkins-hosted Prometheus/Grafana          | Application metrics retained; Kubernetes resource metrics managed separately |
| Platform dependency    | Integrated with Jenkins-hosted environment | Separate Terraform/Helm platform layer                                       |

The project demonstrates that the same application delivery objectives can be implemented through different CI/CD execution models.

It also demonstrates how the architecture can be refined when moving from a self-hosted Jenkins environment to a GitHub-native CI/CD model.

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

Clone the repository from its GitHub remote and enter the project directory:

```bash
git clone <repository-url>
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

The project demonstrates both infrastructure creation and controlled teardown.

Temporary portfolio environments are destroyed after validation to avoid unnecessary ongoing AWS costs.

The Phase 11 teardown was independently verified using AWS CLI commands in addition to Terraform's destroy output.

---

# Documentation

Detailed implementation documentation is available under `docs/`.

| Document                                            | Description                                                                |
| --------------------------------------------------- | -------------------------------------------------------------------------- |
| `01-project-initialization.md`                      | Project foundation and initial roadmap                                     |
| `02-application-refactoring.md`                     | Node.js application restructuring                                          |
| `03-unit-testing.md`                                | Jest and Supertest testing                                                 |
| `04-containerization.md`                            | Docker containerization                                                    |
| `05-terraform-infrastructure.md`                    | AWS infrastructure with Terraform                                          |
| `06-jenkins-server-setup.md`                        | Jenkins EC2 infrastructure                                                 |
| `07-jenkins-installation.md`                        | Jenkins installation and toolchain                                         |
| `08-jenkins-ci-cd-devsecops-pipeline.md`            | Jenkins CI/CD, security, deployment, and observability                     |
| `09-devsecops-governance-and-security-hardening.md` | PR governance and security hardening                                       |
| `10-github-actions-ci-cd.md`                        | GitHub Actions, OIDC, ECR, EKS, and Kubernetes                             |
| `11-complete-devsecops-platform.md`                 | Final Phase 11 integration, platform metrics, HPA, lifecycle, and teardown |

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

## Observability Evidence

The earlier Jenkins implementation contains evidence of the Prometheus/Grafana monitoring architecture.

The Phase 11 evidence contains the later Kubernetes platform metrics validation.

These represent different layers of the project's observability evolution:

```text
Jenkins Era
    │
    └── Prometheus + Grafana
             │
             └── Application monitoring / visualization


GitHub Actions Era
    │
    └── Terraform + Helm
             │
             └── Metrics Server
                     │
                     └── Metrics API
                             │
                             └── HPA
```

---

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

The project's architectural evolution can be summarized as:

```text
Phase 8–9
Jenkins-Based DevSecOps Platform
        │
        ├── Jenkins CI/CD
        ├── Security Automation
        ├── ECR / EKS
        └── Prometheus + Grafana
                │
                ▼
Phase 10
GitHub Actions CI/CD
        │
        ├── Application Delivery
        ├── GitHub OIDC
        ├── ECR
        └── EKS
                │
                ▼
Phase 10–11 Platform Layer
        │
        └── Terraform + Helm
                │
                └── Metrics Server
                        │
                        ▼
                       HPA
                        │
                        ▼
              Verified Scale-Up/Scale-Down
```

This final architecture demonstrates both the implementation of a complete DevSecOps platform and the ability to evolve that platform as CI/CD and infrastructure-management responsibilities become more clearly separated.

---

# Portfolio Value

This project demonstrates practical experience across:

```text
Cloud Engineering
      +
DevOps
      +
DevSecOps
      +
Infrastructure as Code
      +
CI/CD
      +
Docker
      +
Kubernetes
      +
AWS
      +
Security Automation
      +
Observability
      +
Autoscaling
      +
Infrastructure Lifecycle Management
```

The repository provides both the implementation and the supporting evidence required to examine how each layer was built and validated.

---

# Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Focused on building secure, automated, scalable, and cloud-native infrastructure using DevOps and DevSecOps practices.

---

> **Project Philosophy:** Build incrementally. Validate each layer. Capture evidence. Document the implementation. Automate security. Govern changes. Maintain reproducibility. Continuously improve.
