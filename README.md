# End-to-End Node.js CI/CD & DevSecOps Pipeline on AWS

> A comprehensive cloud-native DevSecOps portfolio project demonstrating automated testing, source-code security, dependency security, container security, container image promotion, Amazon ECR publishing, Amazon EKS deployment, Kubernetes orchestration, autoscaling, and observability using Node.js, Jenkins, Docker, Terraform, AWS, SonarCloud, Snyk, Trivy, Prometheus, and Grafana. OWASP ZAP DAST is the next planned security milestone.


![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?logo=docker)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?logo=jenkins)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-326CE5?logo=kubernetes)
![Node.js](https://img.shields.io/badge/Node.js-Application-339933?logo=node.js)
![SonarCloud](https://img.shields.io/badge/SonarCloud-SAST-F3702A?logo=sonarcloud)
![Snyk](https://img.shields.io/badge/Snyk-SCA-4C4A73?logo=snyk)
![Trivy](https://img.shields.io/badge/Trivy-Container%20Security-1904DA)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-E6522C?logo=prometheus)
![Grafana](https://img.shields.io/badge/Grafana-Visualization-F46800?logo=grafana)
![License](https://img.shields.io/badge/License-MIT-green)

> A comprehensive portfolio project demonstrating modern DevOps and DevSecOps practices using Node.js, Docker, Terraform, Jenkins, AWS, Kubernetes, SonarCloud, Snyk, Trivy, Prometheus, and Grafana.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Key Features](#key-features)
3. [Current Progress](#current-progress)
4. [Project Roadmap](#project-roadmap)
5. [Project Objectives](#project-objectives)
6. [Solution Architecture](#solution-architecture)
7. [AWS Infrastructure Provisioned](#aws-infrastructure-provisioned)
8. [Technology Stack](#technology-stack)
9. [Project Structure](#project-structure)
10. [Repository Structure](#repository-structure)
11. [Project Workflow](#project-workflow)
12. [Project Phases](#project-phases)
13. [Latest Milestone](#latest-milestone)
14. [Current Pipeline Flow](#current-pipeline-flow)
15. [Current Phase 8 Status](#current-phase-8-status)
16. [Documentation](#documentation)
17. [Screenshots](#screenshots)
18. [Prerequisites](#prerequisites)
19. [Running the Project Locally](#running-the-project-locally)
20. [CI/CD Pipeline Roadmap](#cicd-pipeline-roadmap)
21. [Future Enhancements](#future-enhancements)
22. [Project Status](#project-status)
23. [Author](#author)


---

## Project Overview

This repository demonstrates the design, implementation, deployment, security validation, and monitoring of an end-to-end DevSecOps pipeline for a containerized Node.js monitoring application on Amazon Web Services (AWS).

The project integrates modern DevOps, DevSecOps, cloud-native, Infrastructure as Code (IaC), Kubernetes, and observability practices to demonstrate how an application progresses from source code through automated testing, security validation, containerization, image promotion, Kubernetes deployment, autoscaling, and runtime monitoring.

The implemented solution integrates:

- Infrastructure as Code with Terraform
- Containerization with Docker
- Continuous Integration and Continuous Deployment with Jenkins
- Static Application Security Testing (SAST) with SonarCloud
- Software Composition Analysis (SCA) with Snyk
- Container vulnerability scanning with Trivy
- Trivy HIGH/CRITICAL security quality gating
- Container image publishing with Amazon Elastic Container Registry (Amazon ECR)
- Container orchestration with Amazon Elastic Kubernetes Service (Amazon EKS)
- Manual Amazon EKS deployment validation
- Automated Amazon EKS deployment through Jenkins
- Kubernetes rollout and service verification
- Kubernetes Horizontal Pod Autoscaling (HPA)
- Prometheus application and Kubernetes metrics collection
- Grafana monitoring and visualization

The project also provides the runtime environment required for the next security milestone:

- Dynamic Application Security Testing (DAST) with OWASP ZAP

Rather than focusing on a single technology, this project demonstrates how industry-standard tools can be integrated into a controlled, automated, and security-focused software delivery lifecycle.

The implementation follows an incremental engineering approach in which each phase is designed, implemented, tested, validated, and documented before progressing to the next stage.

---

## Key Features

### Infrastructure & Cloud

- Infrastructure provisioned using Terraform
- Amazon VPC with public and private networking
- Dedicated Jenkins automation server on Amazon EC2
- Jenkins IAM integration
- Amazon Elastic Container Registry (Amazon ECR)
- Amazon Elastic Kubernetes Service (Amazon EKS)

### Application & Containerization

- Dockerized Node.js monitoring application
- Automated Docker image build
- Production image verification
- Application health verification

### CI/CD Automation

- Jenkins CI/CD pipeline
- Automated source-code checkout
- Automated dependency installation
- Automated unit testing with Jest and Supertest
- Automated Amazon ECR image publishing
- Amazon ECR image verification
- Automated Amazon EKS deployment
- Kubernetes rollout verification

### DevSecOps Security

- SonarCloud Static Application Security Testing (SAST)
- SonarCloud Quality Gate enforcement
- Snyk Software Composition Analysis (SCA)
- Dependency vulnerability analysis with Snyk
- Trivy container vulnerability scanning
- Trivy HIGH/CRITICAL security quality gate
- Security gate enforcement before Amazon ECR image publishing

### Kubernetes & Cloud-Native Deployment

- Manual Amazon EKS deployment validation
- Automated Amazon EKS deployment through Jenkins
- Kubernetes application deployment
- Kubernetes Service and AWS Load Balancer integration
- Kubernetes Horizontal Pod Autoscaler (HPA)
- HPA metrics verification
- Kubernetes Service verification

### Observability

- Prometheus application metrics collection
- Prometheus Kubernetes ServiceMonitor discovery
- Prometheus metrics verification
- Grafana monitoring dashboards
- Application and Kubernetes monitoring

### Next Security Milestone

- OWASP ZAP Dynamic Application Security Testing (DAST)

---

## Current Progress

The project has progressed from application development and containerization through AWS infrastructure provisioning, CI/CD automation, DevSecOps security validation, Amazon ECR image publishing, Amazon EKS deployment, Kubernetes orchestration, and runtime monitoring.

### ✅ Completed

- ✔ Node.js monitoring application
- ✔ Application refactoring
- ✔ Unit testing with Jest and Supertest
- ✔ Docker containerization
- ✔ AWS infrastructure provisioned with Terraform
- ✔ Amazon ECR repository
- ✔ Amazon EKS cluster
- ✔ Dedicated Jenkins server on Amazon EC2
- ✔ Jenkins installation and configuration
- ✔ Jenkins CI/CD pipeline
- ✔ SonarCloud SAST and Quality Gate
- ✔ Snyk Software Composition Analysis (SCA)
- ✔ Docker production image verification
- ✔ Trivy container vulnerability scanning
- ✔ Trivy HIGH/CRITICAL security quality gate
- ✔ Application health verification
- ✔ Amazon ECR image publishing and verification
- ✔ Manual Amazon EKS deployment validation
- ✔ Automated Amazon EKS deployment through Jenkins
- ✔ Kubernetes rollout verification
- ✔ Kubernetes Service and AWS Load Balancer verification
- ✔ Kubernetes Horizontal Pod Autoscaler (HPA)
- ✔ Prometheus ServiceMonitor discovery
- ✔ Prometheus application and Kubernetes metrics collection
- ✔ Grafana Kubernetes monitoring
- ✔ Final Amazon EKS application verification


### ⏳ Next Milestone

- OWASP ZAP Dynamic Application Security Testing (DAST)

The application is now successfully deployed and running on Amazon EKS, exposed through the Kubernetes Service and AWS Load Balancer, and monitored through Prometheus and Grafana.

The next milestone is therefore to introduce runtime application security testing using OWASP ZAP.

---

## Project Roadmap

The project is being implemented incrementally, with each milestone building toward a complete end-to-end DevSecOps platform.

| Phase | Status |
|---|---|
| Project Initialization | ✅ Completed |
| Application Refactoring | ✅ Completed |
| Unit Testing | ✅ Completed |
| Docker Containerization | ✅ Completed |
| Terraform Infrastructure | ✅ Completed |
| Jenkins Server Setup | ✅ Completed |
| Jenkins Installation & Configuration | ✅ Completed |
| Jenkins CI/CD & DevSecOps Pipeline | ✅ Completed |
| Amazon ECR Image Publishing | ✅ Completed |
| Amazon EKS Deployment | ✅ Completed |
| Kubernetes Rollout Verification | ✅ Completed |
| Prometheus & Grafana Monitoring | ✅ Completed |
| OWASP ZAP DAST | ⏳ Planned |
| Pull Request Validation | ⏳ Planned |
| Secrets Detection | ⏳ Planned |
| GitHub Webhook Integration | ⏳ Planned |
| GitHub Actions | ⏳ Planned |
| Complete DevSecOps Platform Integration & Validation | ⏳ Planned |

### Legend

- ✅ Completed
- 🚧 In Progress
- ⏳ Planned

---

## Project Objectives

The primary objectives of this project are to:

- Develop a production-oriented Node.js monitoring application.
- Refactor the application for improved structure, maintainability, and production readiness.
- Implement automated unit testing using Jest and Supertest.
- Containerize the application using Docker.
- Provision AWS infrastructure using Terraform and Infrastructure as Code (IaC).
- Deploy and configure a dedicated Jenkins automation server on Amazon EC2.
- Build an automated Jenkins CI/CD and DevSecOps pipeline.
- Integrate security controls throughout the software delivery lifecycle.
- Implement Static Application Security Testing (SAST) using SonarCloud.
- Enforce SonarCloud Quality Gate evaluation.
- Implement Software Composition Analysis (SCA) using Snyk.
- Perform container image vulnerability scanning using Trivy.
- Enforce a Trivy HIGH/CRITICAL security quality gate before image promotion.
- Verify the production Docker image before release.
- Perform an application health check before image promotion.
- Publish security-validated container images to Amazon ECR.
- Verify successfully published container images in Amazon ECR.
- Deploy validated container images to Amazon EKS.
- Validate Kubernetes deployment through both manual and automated deployment approaches.
- Verify successful Kubernetes application rollout.
- Verify Kubernetes Services and AWS Load Balancer availability.
- Implement Kubernetes application health verification.
- Implement Kubernetes Horizontal Pod Autoscaling (HPA).
- Implement Prometheus ServiceMonitor-based application metrics discovery.
- Collect application and Kubernetes metrics using Prometheus.
- Visualize application and Kubernetes monitoring data using Grafana.
- Demonstrate an observable, cloud-native application running on Amazon EKS.
- Demonstrate an end-to-end software delivery lifecycle from source-code development through testing, security validation, container image promotion, Kubernetes deployment, and monitoring.

### Future Objectives

The following objectives represent planned extensions to the current implementation:

- Implement Dynamic Application Security Testing (DAST) using OWASP ZAP.
- Automate runtime security testing against the deployed Amazon EKS application.
- Evaluate and document OWASP ZAP security findings.
- Integrate DAST security results into the Jenkins pipeline.
- Implement Pull Request Validation as an additional source-control security and quality control.
- Implement automated Secrets Detection to help prevent sensitive credentials and secrets from being committed.
- Integrate GitHub Webhooks with Jenkins for automated pipeline triggering.
- Evaluate GitHub Actions as an additional CI/CD automation workflow.
- Add additional monitoring dashboards and observability enhancements.
- Complete and validate the broader end-to-end DevSecOps platform.

The project ultimately aims to demonstrate a reproducible, production-oriented DevSecOps delivery platform on AWS that combines Infrastructure as Code, CI/CD automation, security controls, containerization, Kubernetes orchestration, observability, and runtime security testing.

---

## Solution Architecture

The solution architecture demonstrates the implemented end-to-end DevSecOps lifecycle of the Node.js monitoring application, covering source-code management, automated testing, security validation, container image promotion, Amazon EKS deployment, Kubernetes verification, and observability.

The architecture follows a **security-first release flow**, where the application and container image pass automated quality and security controls before the validated image is promoted to Amazon ECR and deployed to Amazon EKS.

### End-to-End DevSecOps Architecture

```text
GitHub
   │
   │ Source Code
   ▼
Jenkins
   │
   ├── Checkout Source Code
   │
   ├── Install Dependencies
   │
   ├── Unit Testing
   │      └── Jest / Supertest
   │
   ├── SonarCloud
   │      ├── SAST Analysis
   │      └── Quality Gate
   │
   ├── Snyk
   │      └── SCA / Dependency Analysis
   │
   ├── Docker
   │      └── Build Container Image
   │
   ├── Production Image Verification
   │      ├── Node.js Runtime Verification
   │      ├── npm Removal Verification
   │      └── npx Removal Verification
   │
   ├── Trivy
   │      ├── Container Vulnerability Scan
   │      ├── Alpine OS Package Analysis
   │      ├── Node.js Dependency Analysis
   │      └── HIGH/CRITICAL Security Quality Gate
   │             │
   │             ├── FAIL ──► Stop Pipeline
   │             │
   │             └── PASS
   │
   ├── Application Health Check
   │      └── /health
   │
   ├── Amazon ECR
   │      ├── Authenticate
   │      ├── Tag Validated Image
   │      ├── Push Image
   │      └── Verify Published Image
   │
   ▼
Amazon EKS
   │
   ├── Kubernetes Deployment
   │      ├── Application Pods
   │      └── ECR Image
   │
   ├── Kubernetes Service
   │      └── LoadBalancer
   │
   ├── AWS Load Balancer
   │      └── External Application Access
   │
   ├── Kubernetes Rollout Verification
   │      ├── Deployment Status
   │      ├── Pod Readiness
   │      └── Replica Availability
   │
   ├── Horizontal Pod Autoscaler
   │      └── HPA Verification
   │
   └── Kubernetes Service Verification
          │
          ▼
Application Health & Runtime Validation
   │
   ├── Application Health Endpoint
   │      └── /health
   │
   ├── Application Endpoint
   │      └── /
   │
   └── Prometheus Metrics Endpoint
          └── /metrics
          │
          ▼
Prometheus
   │
   ├── ServiceMonitor Discovery
   ├── Kubernetes Metrics Collection
   └── Application Metrics Collection
          │
          ▼
Grafana
   │
   └── Monitoring Dashboards
          ├── Application Health
          ├── Application Metrics
          ├── Kubernetes Metrics
          └── Infrastructure Visibility
```

### Planned Runtime Security Extension

The next security milestone extends the implemented architecture with Dynamic Application Security Testing (DAST):

```text
Running Amazon EKS Application
             │
             ▼
        OWASP ZAP
             │
             ▼
     Dynamic Application
     Security Testing (DAST)
             │
             ├── Runtime Application Scanning
             ├── Security Finding Detection
             └── DAST Results Evaluation
```

### Architecture Layers

The implemented solution is organized into the following architectural layers:

| Layer | Technology | Responsibility |
|---|---|---|
| **Source Control** | GitHub | Application source-code management and version control |
| **CI/CD Automation** | Jenkins | Pipeline orchestration and automated software delivery |
| **Application Testing** | Jest / Supertest | Automated application unit and integration testing |
| **SAST** | SonarCloud | Static source-code security and quality analysis |
| **SCA** | Snyk | Third-party dependency and open-source vulnerability analysis |
| **Containerization** | Docker | Application packaging and reproducible container image creation |
| **Container Security** | Trivy | Container image vulnerability scanning |
| **Security Quality Gate** | Trivy | Blocks images containing configured HIGH/CRITICAL vulnerabilities |
| **Container Registry** | Amazon ECR | Storage, publishing, and verification of validated container images |
| **Container Orchestration** | Amazon EKS | Kubernetes-based application deployment and management |
| **Application Exposure** | Kubernetes Service / AWS Load Balancer | External access to the deployed application |
| **Application Scaling** | Kubernetes HPA | Automatic application replica scaling based on configured metrics |
| **Runtime Health Validation** | Kubernetes Health Checks | Verification of application availability and runtime health |
| **Metrics Discovery** | Prometheus ServiceMonitor | Automatic discovery and scraping configuration for application metrics |
| **Metrics Collection** | Prometheus | Application and Kubernetes metrics collection |
| **Visualization** | Grafana | Application, Kubernetes, and infrastructure monitoring dashboards |


### Planned Security Layer

| Layer | Technology | Responsibility | Status |
|---|---|---|---|
| **DAST** | OWASP ZAP | Dynamic security testing against the running Amazon EKS application | ⏳ Planned |



### DevSecOps Security Flow

Security is integrated throughout the application delivery lifecycle rather than being performed only after deployment.

```text
Source Code
    │
    ▼
Unit Testing
    │
    ▼
SonarCloud SAST
    │
    ▼
SonarCloud Quality Gate
    │
    ▼
Snyk SCA
    │
    ▼
Docker Image Build
    │
    ▼
Production Image Verification
    │
    ▼
Trivy Container Scan
    │
    ▼
HIGH/CRITICAL Security Quality Gate
    │
    ├────────────── FAIL ──────────────► Pipeline Stops
    │
    ▼ PASS
Application Health Check
    │
    ▼
Amazon ECR
    │
    ▼
ECR Image Verification
    │
    ▼
Amazon EKS Deployment
    │
    ▼
Kubernetes Rollout Verification
    │
    ▼
Application Runtime
    │
    ├── Prometheus Metrics
    │
    ├── Grafana Monitoring
    │
    └── OWASP ZAP DAST
```

---

## Container Image Promotion Flow

The container promotion process ensures that only a validated image progresses toward deployment.

```text
Docker Build
     │
     ▼
Production Image Verification
     │
     ▼
Trivy Vulnerability Scan
     │
     ▼
HIGH/CRITICAL Evaluation
     │
     ├───────────────┐
     │               │
     ▼               ▼
   PASS             FAIL
     │               │
     ▼               ▼
Application       Pipeline
Health Check       Stops
     │
     ▼
Amazon ECR
     │
     ▼
ECR Image Verification
     │
     ▼
Amazon EKS
```

> This establishes Amazon ECR as the trusted container-image registry between the CI/CD security-validation process and the Amazon EKS deployment environment.

---

## Amazon EKS Deployment Architecture

The validated container image is deployed to Amazon EKS using Kubernetes manifests.

```text
Amazon ECR
    │
    │ Validated Container Image
    ▼
Amazon EKS Cluster
    │
    ├── Kubernetes Deployment
    │      │
    │      ├── Pod
    │      ├── Pod
    │      └── Replicas
    │
    ├── Horizontal Pod Autoscaler
    │
    └── Kubernetes Service
           │
           ▼
     AWS Load Balancer
           │
           ▼
     Running Application
```

The project validates the EKS deployment through both:

1. Manual Amazon EKS deployment, used to validate the Kubernetes manifests, ECR image integration, application availability, Service, and LoadBalancer behavior.
2. Automated Amazon EKS deployment, integrated into Jenkins so the validated container image can be deployed automatically to the EKS cluster.

---

### Manual Amazon EKS Deployment

Before automating the deployment through Jenkins, the application was manually deployed to Amazon EKS.

The manual deployment served as an important baseline validation step.

It verified that:

1. The Amazon EKS cluster was operational.
2. Kubernetes worker nodes were available.
3. Kubernetes manifests were valid.
4. The application container could be pulled from Amazon ECR.
5. Kubernetes Pods could start successfully.
6. The Kubernetes Service could expose the application.
7. AWS could provision the required Load Balancer.
8. The application could be accessed externally.
9. The /health endpoint returned a successful response.
10. The /metrics endpoint exposed Prometheus metrics.

Manual Deployment Flow

```text
GitHub
   │
   ▼
Jenkins
   │
   ├── Checkout Source Code
   │
   ├── Install Dependencies
   │
   ├── Unit Testing
   │      └── Jest / Supertest
   │
   ├── SonarCloud
   │      ├── SAST Analysis
   │      └── Quality Gate
   │
   ├── Snyk
   │      └── SCA / Dependency Analysis
   │
   ├── Docker Build
   │
   ├── Verify Production Image
   │
   ├── Trivy
   │      ├── Container Vulnerability Scan
   │      └── HIGH/CRITICAL Quality Gate
   │
   ├── Application Health Check
   │
   ├── Amazon ECR
   │      ├── Authenticate
   │      ├── Tag Image
   │      ├── Push Validated Image
   │      └── Verify Published Image
   │
   ├── Amazon EKS
   │      ├── Application Deployment
   │      ├── Kubernetes Service
   │      └── AWS Load Balancer
   │
   ├── Kubernetes
   │      ├── Rollout Verification
   │      ├── HPA Verification
   │      └── Service Verification
   │
   ├── Prometheus
   │      ├── ServiceMonitor Discovery
   │      └── Metrics Collection
   │
   ├── Grafana
   │      └── Monitoring Dashboards
   │
   └── OWASP ZAP
          └── DAST
```

Manual deployment provided confidence that the Kubernetes manifests, container image, service configuration, networking, and application endpoints were working correctly before introducing Jenkins automation.

---

## Automated Amazon EKS Deployment

After successful manual validation, the deployment process was integrated into the Jenkins CI/CD pipeline.

The automated deployment allows Jenkins to deploy the validated Amazon ECR image directly to the Amazon EKS cluster.

The automated flow is:

```text
GitHub
   │
   ▼
Jenkins
   │
   ▼
CI/CD Pipeline
   │
   ├── Unit Tests
   │
   ├── SonarCloud SAST
   │
   ├── SonarCloud Quality Gate
   │
   ├── Snyk SCA
   │
   ├── Docker Build
   │
   ├── Production Image Verification
   │
   ├── Trivy Scan
   │
   ├── Trivy HIGH/CRITICAL Quality Gate
   │
   ├── Application Health Check
   │
   ├── Amazon ECR Push
   │
   ├── ECR Image Verification
   │
   ▼
Amazon EKS Deployment
   │
   ▼
Kubernetes Rollout Verification
   │
   ▼
Kubernetes Service Verification
   │
   ▼
Application Health Check
   │
   ▼
Prometheus Monitoring
   │
   ▼
Grafana Visualization
```

This establishes a complete automated delivery path from GitHub source code to a running application on Amazon EKS.

---

## Manual vs Automated Amazon EKS Deployment

The project intentionally implements both deployment approaches.

### Manual vs Automated Amazon EKS Deployment

The project intentionally implements both deployment approaches.

| Deployment Method | Purpose | Result |
|---|---|---|
| Manual Amazon EKS Deployment | Validate Kubernetes configuration and application deployment independently | ✅ Successful |
| Automated Jenkins EKS Deployment | Integrate Kubernetes deployment into the CI/CD pipeline | ✅ Successful |
| Kubernetes Rollout Verification | Confirm Pods become ready successfully | ✅ Passed |
| Kubernetes Service Verification | Confirm application networking and service exposure | ✅ Passed |
| AWS Load Balancer Verification | Confirm external application accessibility | ✅ Passed |
| Application Health Check | Confirm application runtime health | ✅ Passed |
| Jenkins EKS Pipeline | Confirm repeatable automated deployment | ✅ Successful |

The manual deployment therefore served as the deployment baseline, while the automated deployment transformed the validated deployment process into a repeatable CI/CD capability.

---

## Kubernetes Deployment and Runtime Architecture

The running application follows this architecture:

```text
Internet
   │
   ▼
AWS Load Balancer
   │
   ▼
Kubernetes Service
   │
   ▼
node-monitoring-app Pods
   │
   ▼
Node.js Application
   │
   ├── /
   ├── /health
   └── /metrics
```

The /health endpoint is used to verify application availability.

The /metrics endpoint exposes Prometheus-compatible application metrics.

---

## Kubernetes Rollout and Availability Verification

The automated deployment includes Kubernetes rollout verification.

```text
Jenkins
   │
   ▼
Kubernetes Deployment
   │
   ▼
Pod Creation
   │
   ▼
Pod Readiness
   │
   ▼
Rollout Verification
   │
   ├── PASS ──► Continue
   │
   └── FAIL ──► Pipeline Stops
```

This prevents Jenkins from reporting a successful deployment when the Kubernetes application has not successfully rolled out.

The project also verifies:

- Kubernetes Pods
- Deployment status
- Kubernetes Service
- AWS Load Balancer
- Application health endpoint
- External application accessibility

---

## Kubernetes Horizontal Pod Autoscaler

The deployed application also includes Horizontal Pod Autoscaler verification.

The HPA provides a Kubernetes-native mechanism for automatically adjusting application replicas based on configured resource utilization.

```text
Application Load
        │
        ▼
Kubernetes Metrics
        │
        ▼
Horizontal Pod Autoscaler
        │
        ├── Scale Out
        │
        └── Scale In
        │
        ▼
Application Pods
```

HPA verification provides additional evidence that the Kubernetes deployment is not only running but also has an autoscaling capability.

---

## Prometheus and Grafana Monitoring

After successfully deploying the application to Amazon EKS, Prometheus and Grafana were implemented to provide observability into the running application and Kubernetes environment.

Monitoring was intentionally introduced after deployment validation because the application needed to be running inside the Kubernetes environment before meaningful runtime metrics could be collected and visualized.

### Why Prometheus Was Implemented

Prometheus provides metrics collection for the running application and Kubernetes environment.

The Node.js application exposes a Prometheus-compatible /metrics endpoint.

Prometheus can therefore collect information about:

- Application requests
- Application runtime behavior
- Node.js process metrics
- Application performance indicators
- Kubernetes infrastructure metrics
- Kubernetes workload health

The Kubernetes ServiceMonitor configuration allows Prometheus to discover the application metrics endpoint automatically.

### Prometheus Monitoring Flow

```text
Node.js Application
        │
        │ /metrics
        ▼
Kubernetes Service
        │
        ▼
ServiceMonitor
        │
        ▼
Prometheus
        │
        ▼
Metrics Database
```

This provides automated metrics discovery and collection rather than relying on manual inspection of the application.

---

## Why Grafana Was Implemented

Prometheus is primarily responsible for collecting and storing metrics, while Grafana provides visualization and dashboards.

Grafana was implemented to provide a visual representation of the running Kubernetes application and infrastructure.

This allows the project to move beyond deployment verification into runtime observability.

The monitoring architecture is:

```text
Running Application
        │
        ▼
Prometheus
        │
        ▼
Grafana
        │
        ▼
Monitoring Dashboards
```

Grafana provides a centralized view of application and Kubernetes metrics, making it easier to identify:

- Application activity
- Resource utilization
- Kubernetes workload behavior
- Pod health
- Runtime performance
- Infrastructure conditions
- Potential operational issues

The implementation demonstrates that a production-oriented DevOps platform should not stop at successful deployment. The running application should also be observable.

---

## Monitoring Architecture

The monitoring architecture is:

```text
Node.js Application
        │
        ├── /
        ├── /health
        └── /metrics
                │
                ▼
        Kubernetes Service
                │
                ▼
          ServiceMonitor
                │
                ▼
             Prometheus
                │
                ▼
              Grafana
                │
                ▼
        Monitoring Dashboards
```

This creates an observability layer around the deployed application.

---

## Runtime Security Architecture

The next security layer is OWASP ZAP DAST.

Unlike SonarCloud, Snyk, and Trivy, which evaluate the application source code, dependencies, or container image before deployment, OWASP ZAP evaluates the running application.

```text
Amazon EKS
    │
    ▼
AWS Load Balancer
    │
    ▼
Running Node.js Application
    │
    ▼
OWASP ZAP
    │
    ├── Dynamic Application Scanning
    ├── Runtime Security Testing
    ├── Security Finding Detection
    └── Results Evaluation
```

This provides an additional security layer by testing the deployed application's externally accessible behavior and identifying potential runtime web-application security issues.

---

## Future CI/CD Security and Automation Architecture

After the current Jenkins-based deployment, monitoring, and observability implementation, additional controls will extend the platform toward a more complete DevSecOps workflow.

```text
GitHub
   │
   ├── Pull Request
   │      │
   │      ├── Pull Request Validation
   │      └── Secrets Detection
   │
   └── GitHub Webhook
          │
          ▼
       Jenkins
          │
          ▼
     CI/CD Pipeline
          │
          ├── Testing
          ├── SAST
          ├── SCA
          ├── Container Security
          ├── ECR Promotion
          ├── EKS Deployment
          ├── DAST
          └── Monitoring
```

> GitHub Webhook integration will allow repository events to automatically trigger Jenkins builds instead of relying on manual pipeline execution.

> Pull Request Validation and Secrets Detection will provide additional controls earlier in the software-development lifecycle, helping identify quality, security, and credential-exposure issues before changes are merged.

> GitHub Actions will subsequently be implemented as an additional CI/CD automation workflow, providing an alternative automation mechanism alongside Jenkins.

---

## Target Architecture

The long-term target architecture combines source-control security, CI/CD automation, DevSecOps scanning, container security, cloud-native deployment, observability, and runtime security.

```text
                         ┌──────────────────────┐
                         │       GitHub         │
                         │ Source Control       │
                         └──────────┬───────────┘
                                    │
                    ┌───────────────┴───────────────┐
                    │                               │
                    ▼                               ▼
          Pull Request Validation           GitHub Webhook
                    │                               │
                    └───────────────┬───────────────┘
                                    ▼
                              ┌───────────┐
                              │  Jenkins  │
                              └─────┬─────┘
                                    │
                                    ▼
                         ┌─────────────────────┐
                         │ CI/CD & DevSecOps   │
                         └──────────┬──────────┘
                                    │
             ┌──────────────────────┼──────────────────────┐
             │                      │                      │
             ▼                      ▼                      ▼
        Unit Testing          SonarCloud               Snyk
             │                  SAST/QG                 SCA
             └──────────────────────┬──────────────────────┘
                                    ▼
                              Docker Build
                                    │
                                    ▼
                         Production Image Verification
                                    │
                                    ▼
                               Trivy Scan
                                    │
                                    ▼
                         HIGH/CRITICAL Quality Gate
                                    │
                          ┌─────────┴─────────┐
                          │                   │
                        FAIL                 PASS
                          │                   │
                          ▼                   ▼
                       STOP              Amazon ECR
                                              │
                                              ▼
                                      ECR Verification
                                              │
                                              ▼
                                        Amazon EKS
                                              │
                         ┌────────────────────┼────────────────────┐
                         │                    │                    │
                         ▼                    ▼                    ▼
                    Deployment              HPA              Kubernetes
                         │                                      Service
                         ▼                                         │
                  Rollout Verification                              ▼
                         │                                  AWS Load Balancer
                         ▼                                         │
                  Running Application                              ▼
                         │                                  External Access
              ┌──────────┼───────────┐
              │          │           │
              ▼          ▼           ▼
           /health       /        /metrics
                                     │
                                     ▼
                                Prometheus
                                     │
                              ServiceMonitor
                                     │
                                     ▼
                                  Grafana
                                     │
                                     ▼
                            Monitoring Dashboards

                    Running Application
                            │
                            ▼
                       OWASP ZAP
                            │
                            ▼
                           DAST

                    GitHub Actions
                            │
                            ▼
                 Additional CI/CD Workflow
```

> This architecture represents the project's progression from application development and infrastructure provisioning to a complete cloud-native DevSecOps platform incorporating CI/CD automation, security gates, container-image promotion, Kubernetes deployment, autoscaling, observability, runtime security testing, source-control security, webhook-driven automation, and GitHub Actions.


---

## Security Control Strategy

The pipeline applies security controls at multiple stages of the software delivery lifecycle. Each security tool addresses a different layer of the DevSecOps process, providing defense in depth from source-code analysis through container security and runtime application security.

| Security Layer | Tool | Purpose | Implementation Status |
|---|---|---|---|
| **Source Code Security** | SonarCloud | Static Application Security Testing (SAST) and source-code quality analysis | ✅ Implemented |
| **Dependency Security** | Snyk | Software Composition Analysis (SCA) and third-party dependency vulnerability analysis | ✅ Implemented |
| **Container Security** | Trivy | Docker container image vulnerability scanning | ✅ Implemented |
| **Release Security Quality Gate** | Trivy | Prevent HIGH/CRITICAL container vulnerabilities from being promoted | ✅ Implemented |
| **Container Image Promotion** | Amazon ECR | Store and promote security-validated container images | ✅ Implemented |
| **Deployment Security** | Amazon EKS | Deploy validated container images into the Kubernetes environment | ✅ Implemented |
| **Runtime Monitoring** | Prometheus | Collect application and Kubernetes metrics from the running environment | ✅ Implemented |
| **Visualization** | Grafana | Visualize application, Kubernetes, and infrastructure metrics | ✅ Implemented |
| **Runtime/Application Security** | OWASP ZAP | Dynamic Application Security Testing (DAST) against the deployed application | ⏳ Next Milestone |

### Security Control Flow

```text
Source Code
    │
    ▼
SonarCloud SAST
    │
    ▼
SonarCloud Quality Gate
    │
    ▼
Snyk SCA
    │
    ▼
Docker Image Build
    │
    ▼
Production Image Verification
    │
    ▼
Trivy Container Scan
    │
    ▼
Trivy HIGH/CRITICAL Quality Gate
    │
    ├── FAIL ──► Stop Pipeline
    │
    ▼ PASS
Application Health Check
    │
    ▼
Amazon ECR
    │
    ▼
ECR Image Verification
    │
    ▼
Amazon EKS
    │
    ▼
Kubernetes Deployment
    │
    ▼
Kubernetes Rollout Verification
    │
    ▼
Running Application
    │
    ├───────────────┬─────────────────┐
    │               │                 │
    ▼               ▼                 ▼
Prometheus       Grafana         OWASP ZAP
Metrics          Visualization   DAST
    │                                 │
    │                                 └──► Next Security Milestone
    ▼
Application & Kubernetes
Observability
```

### Defense-in-Depth Security Model

The project implements security controls at different points in the application delivery lifecycle:

1. SonarCloud analyzes the source code before the application progresses through the pipeline.
2. Snyk analyzes third-party dependencies for known vulnerabilities.
3. Trivy scans the built container image for operating-system and application dependency vulnerabilities.
4. Trivy HIGH/CRITICAL Quality Gate acts as a release control point and prevents non-compliant images from being promoted to Amazon ECR.
5. Amazon ECR stores the validated container image used for deployment.
6. Amazon EKS deploys the validated image into the Kubernetes environment.
7. Prometheus and Grafana provide monitoring and observability of the running application and Kubernetes environment.
8. OWASP ZAP will provide the next runtime security layer by dynamically testing the deployed application for potential web-application security vulnerabilities.

> Security principle: Security controls are applied throughout the software delivery lifecycle rather than being limited to a single stage of the pipeline.

> Important: Trivy and OWASP ZAP address different security concerns. Trivy evaluates the container image before deployment and promotion, while OWASP ZAP performs dynamic security testing against the running application after deployment to Amazon EKS.

---

## Release Promotion Model

The release promotion model defines how application changes progress through testing, security validation, container publishing, Kubernetes deployment, monitoring, and runtime security testing.

```text
Source Code
     │
     ▼
Unit Tests
     │
     ▼
SonarCloud SAST
     │
     ▼
SonarCloud Quality Gate
     │
     ▼
Snyk SCA
     │
     ▼
Docker Build
     │
     ▼
Production Image Verification
     │
     ▼
Trivy Container Scan
     │
     ▼
Trivy HIGH/CRITICAL Quality Gate
     │
     ├── FAIL ──► Pipeline Stops
     │
     ▼
Application Health Check
     │
     ▼
Amazon ECR
     │
     ▼
ECR Image Verification
     │
     ▼
Amazon EKS Deployment
     │
     ▼
Kubernetes Rollout Verification
     │
     ▼
Prometheus Monitoring
     │
     ▼
Grafana Visualization
     │
     ▼
OWASP ZAP DAST
     │
     └── Next Milestone
```

---

## Why OWASP ZAP DAST Is the Next Milestone

OWASP ZAP is the next milestone because the application is now successfully deployed and accessible as a running web application.

Earlier security stages focus primarily on source code, dependencies, and the container image:

```text
SonarCloud
   │
   └── Source Code Security

Snyk
   │
   └── Dependency Security

Trivy
   │
   └── Container Security
```
> These controls are important, but they do not replace testing against the actual running application.

OWASP ZAP introduces the next layer:

```text
Running Amazon EKS Application
             │
             ▼
          OWASP ZAP
             │
             ▼
Dynamic Application Security Testing
```

DAST will allow the project to test the application from an external/runtime perspective and identify potential web application security issues that may only become visible when the application is actually running.

The next milestone therefore completes another major part of the DevSecOps security lifecycle:

```text
Code Security
      │
      ▼
Dependency Security
      │
      ▼
Container Security
      │
      ▼
Runtime Application Security
      │
      ▼
OWASP ZAP DAST
```

The implementation of DAST will also be performed against the deployed Amazon EKS application rather than against an undeployed development artifact.

---

## AWS Infrastructure Provisioned

The AWS infrastructure for this project is provisioned and managed using Terraform. It includes the following resources:

- Amazon VPC
- Public Subnets
- Private Subnets
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

The Amazon ECR repository provides the container image registry, while Amazon EKS provides the Kubernetes platform for deploying and orchestrating the application.

The Jenkins EC2 instance provides the CI/CD automation environment used to build, test, scan, publish, and deploy the application.

---

## Technology Stack

| Layer | Technology |
|---|---|
| Programming Language | Node.js |
| Backend Framework | Express.js |
| Monitoring Library | prom-client |
| Unit Testing | Jest, Supertest |
| Containerization | Docker |
| Infrastructure as Code | Terraform |
| Cloud Provider | Amazon Web Services (AWS) |
| Container Registry | Amazon Elastic Container Registry (Amazon ECR) |
| Container Orchestration | Amazon Elastic Kubernetes Service (Amazon EKS) |
| Continuous Integration / Continuous Deployment | Jenkins |
| Static Application Security Testing (SAST) | SonarCloud |
| Software Composition Analysis (SCA) | Snyk |
| Container Security | Trivy |
| Container Security Quality Gate | Trivy HIGH/CRITICAL Gate |
| Monitoring | Prometheus |
| Visualization | Grafana |
| Dynamic Application Security Testing (DAST) | OWASP ZAP — Next Milestone |
| Version Control | Git |
| Repository Hosting | GitHub |

---

## Project Structure

The repository is organized into application code, infrastructure provisioning, Kubernetes deployment configuration, CI/CD automation, documentation, and project evidence.

```text
end-to-end-node-ci-cd-devsecops/
├── app/                  # Node.js application source code and tests
├── infra/                # Terraform AWS infrastructure configuration
├── k8s/                  # Kubernetes deployment, Service, HPA, and monitoring manifests
├── docs/                 # Phase-by-phase project documentation
├── screenshots/          # Implementation and verification evidence
├── Jenkinsfile           # Jenkins CI/CD and DevSecOps pipeline definition
├── .gitignore            # Git ignore configuration
└── README.md             # Project overview and documentation index
```

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
│   ├── 07-jenkins-installation.md
│   └── 08-jenkins-ci-cd-devsecops-pipeline.md
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
│   
│
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── hpa.yaml
│   ├── servicemonitor.yaml
│   
│
├── screenshots/
│   ├── 01-project-initialization/
│   ├── 02-application-refactoring/
│   ├── 03-unit-testing/
│   ├── 04-containerization/
│   ├── 05-terraform-infrastructure/
│   ├── 06-jenkins-server-setup/
│   ├── 07-jenkins-installation/
│   └── 08-jenkins-ci-cd-devsecops-pipeline/
│
├── .gitignore
├── Jenkinsfile
└── README.md
```

---

## Project Workflow

This project follows an incremental engineering approach in which each phase builds upon the previous phase to deliver a complete end-to-end DevSecOps platform.

Each layer is designed, implemented, tested, validated, and documented before progressing to the next stage.

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
Jenkins CI/CD & DevSecOps Pipeline
        │
        ├── SonarCloud SAST
        ├── SonarCloud Quality Gate
        ├── Snyk SCA
        ├── Docker Image Build
        ├── Production Image Verification
        ├── Trivy Container Scan
        └── Trivy Security Quality Gate
                 │
                 ▼
        Application Health Check
                 │
                 ▼
        Amazon ECR Publishing
                 │
                 ▼
        Amazon EKS Deployment
                 │
                 ▼
        Kubernetes Rollout Verification
                 │
                 ▼
        Kubernetes Service / Load Balancer
                 │
                 ▼
        Application Health Verification
                 │
                 ▼
        Prometheus Monitoring
                 │
                 ▼
        Grafana Visualization
```

---

## Implementation Phases

| Phase | Objective | Status |
|---|---|---|
| Application Development | Develop the Node.js monitoring application and establish the project foundation. | ✅ Completed |
| Application Refactoring | Improve application structure, maintainability, and production readiness. | ✅ Completed |
| Unit Testing | Validate application functionality through automated testing. | ✅ Completed |
| Docker Containerization | Package the application into a portable and reproducible container image. | ✅ Completed |
| Terraform Infrastructure | Provision AWS infrastructure using Infrastructure as Code (IaC). | ✅ Completed |
| Jenkins Server Provisioning | Deploy a dedicated Jenkins automation server on Amazon EC2. | ✅ Completed |
| Jenkins Installation & Configuration | Configure Jenkins and supporting DevOps tools. | ✅ Completed |
| Jenkins CI/CD & DevSecOps Pipeline | Automate application testing, security scanning, image publishing, and deployment. | ✅ Completed |
| Amazon ECR Publishing | Publish security-validated container images to Amazon ECR. | ✅ Completed |
| Amazon EKS Deployment | Deploy validated container images to Amazon EKS manually and through Jenkins automation. | ✅ Completed |
| Kubernetes Rollout & Service Verification | Verify application rollout, Pods, Services, LoadBalancer, and application availability. | ✅ Completed |
| Kubernetes Autoscaling | Configure and verify Horizontal Pod Autoscaler (HPA) functionality and metrics. | ✅ Completed |
| Prometheus Monitoring | Collect application and Kubernetes metrics using Prometheus and ServiceMonitor. | ✅ Completed |
| Grafana Dashboards | Visualize application and Kubernetes monitoring data through Grafana. | ✅ Completed |
| OWASP ZAP DAST | Perform dynamic security testing against the running application. | ⏳ Next |

The project follows a phased implementation approach in which each component is designed, implemented, tested, and validated before progressing to the next stage. This approach produces a reproducible and production-oriented DevSecOps environment built around Infrastructure as Code (IaC), CI/CD automation, container security, Kubernetes orchestration, and observability.

---

## Current Pipeline Flow

The current Jenkins CI/CD and DevSecOps pipeline has successfully implemented and validated the following stages:

```text
GitHub
   │
   ▼
Jenkins
   │
   ├── Checkout Source Code                 ✅
   │
   ├── Install Dependencies                 ✅
   │
   ├── Unit Testing                         ✅
   │      └── Jest: 3 Tests Passed
   │
   ├── SonarCloud SAST                      ✅
   │      └── Quality Gate: PASSED
   │
   ├── Snyk SCA                             ✅
   │      ├── Dependency Analysis
   │      ├── Vulnerability Detection
   │      └── Project Monitoring
   │
   ├── Docker Build                         ✅
   │      └── node-monitoring-app:${BUILD_NUMBER}
   │
   ├── Production Image Verification        ✅
   │      ├── Node.js Version
   │      ├── npm Removed
   │      └── npx Removed
   │
   ├── Trivy Container Security Scan        ✅
   │      ├── Alpine OS Package Scanning
   │      ├── Node.js Dependency Analysis
   │      ├── HIGH Severity Check
   │      ├── CRITICAL Severity Check
   │      └── HIGH/CRITICAL Security Gate
   │
   ├── Application Health Check             ✅
   │      └── /health → ok
   │
   ├── Amazon ECR Authentication             ✅
   │
   ├── Amazon ECR Image Tagging              ✅
   │
   ├── Amazon ECR Image Push                 ✅
   │
   ├── Amazon ECR Image Verification         ✅
   │
   ├── Amazon EKS Deployment                 ✅
   │
   ├── Kubernetes Rollout Verification      ✅
   │
   ├── Kubernetes Service Verification      ✅
   │
   ├── EKS Application Health Check         ✅
   │
   ├── HPA Verification                     ✅
   │
   ├── Prometheus ServiceMonitor             ✅
   │
   ├── Prometheus Metrics Collection        ✅
   │
   ├── Grafana Monitoring                   ✅
   │
   └── OWASP ZAP DAST                       ⏳ Next Milestone
```

---

## Current Phase 8 Status

| Pipeline Component | Status |
|---|---|
| Jenkinsfile Configuration | ✅ Completed |
| Tool Initialization | ✅ Completed |
| Checkout Source Code | ✅ Completed |
| Install Dependencies | ✅ Completed |
| Unit Testing | ✅ Completed |
| SonarCloud Analysis | ✅ Passed |
| SonarCloud Quality Gate | ✅ Passed |
| Snyk SCA Integration | ✅ Completed |
| Snyk SCA Pipeline Execution | ✅ Completed |
| Snyk Dependency Vulnerability Analysis | ✅ Completed |
| Docker Build | ✅ Passed |
| Docker Image Creation | ✅ Completed |
| Production Image Verification | ✅ Completed |
| Trivy Container Scan | ✅ Completed |
| Trivy Container Vulnerability Analysis | ✅ Completed |
| Trivy HIGH/CRITICAL Quality Gate | ✅ Passed |
| Trivy Release Gate Enforcement | ✅ Completed |
| Application Health Check | ✅ Passed |
| Amazon ECR Authentication | ✅ Completed |
| Amazon ECR Image Tagging | ✅ Completed |
| Amazon ECR Image Push | ✅ Passed |
| Amazon ECR Image Verification | ✅ Completed |
| Amazon EKS Deployment | ✅ Completed |
| Kubernetes Rollout Verification | ✅ Passed |
| Kubernetes Service Verification | ✅ Passed |
| EKS Application Health Check | ✅ Passed |
| HPA Verification | ✅ Passed |
| Prometheus ServiceMonitor | ✅ Passed |
| Prometheus Metrics Collection | ✅ Passed |
| Grafana Monitoring | ✅ Completed |
| OWASP ZAP DAST | ⏳ Next Milestone |

> **Latest completed milestone:** Amazon EKS deployment and runtime monitoring.

> **Next milestone:** OWASP ZAP Dynamic Application Security Testing (DAST).

---

## Release Promotion Logic

The pipeline uses sequential validation and security gates to ensure that a container image is tested and security-validated before being promoted and deployed.

```text
Source Code
    │
    ▼
Unit Tests
    │
    ▼
SonarCloud SAST
    │
    ▼
SonarCloud Quality Gate
    │
    ▼
Snyk SCA
    │
    ▼
Docker Build
    │
    ▼
Production Image Verification
    │
    ▼
Trivy Container Scan
    │
    ▼
Trivy HIGH/CRITICAL Quality Gate
    │
    ├── FAIL ──► Pipeline Stops
    │
    ▼
Application Health Check
    │
    ▼
Amazon ECR Authentication
    │
    ▼
Amazon ECR Image Push
    │
    ▼
ECR Image Verification
    │
    ▼
Amazon EKS Deployment
    │
    ▼
Kubernetes Rollout Verification
    │
    ▼
Kubernetes Service / Load Balancer
    │
    ▼
Prometheus Monitoring
    │
    ▼
Grafana Visualization
    │
    ▼
OWASP ZAP DAST
```

> Each security control addresses a different layer of the application delivery lifecycle, creating multiple validation points before and after deployment.

The Trivy HIGH/CRITICAL quality gate provides an automated release control that can stop the Jenkins pipeline when the configured vulnerability policy is violated.

After successfully passing the security gates, Jenkins authenticates with Amazon ECR, tags and publishes the validated image, verifies the published image, and deploys the image to Amazon EKS.

The deployed application is then validated through Kubernetes rollout and service checks, application health verification, HPA verification, Prometheus monitoring, and Grafana visualization.

Next milestone: OWASP ZAP Dynamic Application Security Testing (DAST).

---

## Documentation

Detailed documentation for each implementation phase is available in the `docs/` directory.

| Document | Description |
|---|---|
| `01-project-initialization.md` | Project setup and initial repository configuration |
| `02-application-refactoring.md` | Application restructuring and production readiness improvements |
| `03-unit-testing.md` | Automated unit testing with Jest and Supertest |
| `04-containerization.md` | Docker containerization and production image verification |
| `05-terraform-infrastructure.md` | AWS infrastructure provisioning with Terraform, including networking, IAM, Amazon ECR, and Amazon EKS |
| `06-jenkins-server-setup.md` | Provisioning a dedicated Jenkins server on Amazon EC2 using Terraform |
| `07-jenkins-installation.md` | Installation and configuration of Jenkins and supporting DevOps tools |
| `08-jenkins-ci-cd-devsecops-pipeline.md` | Jenkins CI/CD and DevSecOps pipeline implementation, including SonarCloud SAST, Snyk SCA, Trivy container security, Amazon ECR publishing, Amazon EKS deployment, Kubernetes verification, HPA, Prometheus monitoring, and Grafana visualization |

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
├── 07-jenkins-installation/
└── 08-jenkins-ci-cd-devsecops-pipeline/
```

The Phase 8 screenshot directory contains evidence of the implemented CI/CD, DevSecOps, deployment, and monitoring components, including:

- Jenkins plugin, tool, credential, and pipeline configuration
- Unit testing
- SonarCloud SAST and Quality Gate
- Snyk SCA and dependency analysis
- Docker image creation and production image verification
- Trivy container vulnerability scanning and security quality gates
- Amazon ECR authentication, image publishing, and image verification
- Manual Amazon EKS deployment
- Automated Jenkins-based Amazon EKS deployment
- Kubernetes Pods, Services, and rollout verification
- AWS Load Balancer configuration and verification
- Kubernetes HPA and metrics verification
- Application health checks and endpoint verification
- Prometheus ServiceMonitor discovery and metrics collection
- Grafana monitoring and visualization
- Final Amazon EKS application verification

---

### CI/CD and DevSecOps Evidence

Jenkins CI/CD and DevSecOps implementations are documented through the following screenshots.

#### Unit Testing Evidence

The Unit Testing implementation is documented through the following screenshots:

| Screenshot | Evidence |
|---|---|
| `30-jenkinsfile-unit-testing-stage.png` | Jenkinsfile containing the **Unit Testing** stage using `dir('app')` and `npm test`. |
| `31-jenkins-pipeline-unit-testing-build.png` | Jenkins Pipeline build showing execution of the **Unit Testing** stage. |
| `32-unit-testing-stage-success.png` | Successful completion of the Jenkins **Unit Testing** stage. |
| `33-unit-testing-console-output.png` | Jenkins console output showing the **Jest test suite** and all **3 tests passing**. |


#### SonarCloud SAST Evidence

The SonarCloud Static Application Security Testing (SAST) implementation is documented through the following screenshots:

| Screenshot | Evidence |
|---|---|
| `34-jenkinsfile-showing-sonarcloud-analysis-stage.png` | Jenkinsfile containing the **SonarCloud Analysis** stage and Jenkins-managed SonarScanner configuration. |
| `35-jenkins-pipeline-showing-sonarcloud-analysis-stage.png` | Jenkins Pipeline showing the **SonarCloud Analysis** stage as part of the CI/CD workflow. |
| `36-sonarcloud-analysis-success-in-jenkins-console.png` | Jenkins console output confirming successful SonarCloud analysis and report processing. |
| `37-sonarcloud-project-dashboard.png` | SonarCloud project dashboard confirming that the Jenkins analysis reached the configured project. |
| `38-sonarcloud-project-overview-results.png` | SonarCloud project overview displaying the results generated by the static analysis. |
| `39-jenkins-pipeline-stages-overview.png` | Jenkins Pipeline stages overview showing the completed stages through **SonarCloud Analysis**. |
| `40-sonarcloud-quality-gate-success.png` | Jenkins Pipeline stages overview showing the completed **quality gate success**. |


#### #### Snyk Software Composition Analysis (SCA) Evidence

The Snyk Software Composition Analysis (SCA) implementation is documented through the following screenshots:

| Screenshot | Evidence |
|---|---|
| `41-snyk-security-plugin-installed.png` | Jenkins Plugin Manager showing the installed Snyk Security plugin. |
| `42-snyk-credential-configured.png` | Jenkins credential configuration for Snyk authentication. |
| `43-snyk-tool-configuration.png` | Jenkins global tool configuration showing the configured Snyk tool. |
| `44-jenkinsfile-snyk-sca-stage.png` | Jenkinsfile containing the Snyk Software Composition Analysis (SCA) stage. |
| `45-jenkins-pipeline-snyk-sca-stage.png` | Jenkins Pipeline showing execution of the Snyk SCA stage. |
| `46-snyk-vulnerability-results.png` | Snyk vulnerability analysis results identifying vulnerabilities within the application's third-party dependencies. |
| `47-snyk-sca-success.png` | Snyk Software Composition Analysis Success. |


#### Docker Image Build Evidence

The Docker Image Build implementation is documented through the following screenshots:

| Screenshot | Evidence |
|---|---|
| `48-jenkinsfile-docker-build-stage.png` | Jenkinsfile containing the **Docker Image Build** stage used to build the application container image. |
| `49-jenkins-pipeline-docker-build-stage.png` | Jenkins Pipeline showing execution of the **Docker Image Build** stage. |
| `50-docker-build-success.png` | Jenkins console output confirming the **successful Docker image build**. |
| `51-docker-image-created-on-jenkins.png` | Jenkins server showing the successfully created Docker image. |


#### Trivy Container Security Scanning and Quality Gate Evidence**

The Trivy Container Security Scanning implementation is documented through the following screenshots:

| Screenshot | Evidence |
|---|---|
| `52-jenkinsfile-trivy-container-scan-stage.png` | Jenkinsfile containing the **Trivy Container Security Scan** stage used to scan the Docker image. |
| `53-jenkins-pipeline-trivy-container-scan-stage.png` | Jenkins Pipeline showing execution of the **Trivy Container Security Scan** stage. |
| `54-trivy-container-vulnerability-results.png` | Trivy vulnerability analysis results generated from scanning the `node-monitoring-app:1` Docker image. |
| `55-jenkinsfile-trivy-quality-gate.png` | updated Jenkinsfile containing the **Trivy Container Security Scan and Quality Gate** stage used to scan the rebuilt Docker image. |
| `56-jenkins-pipeline-trivy-quality-gate-stage.png` | Jenkins Pipeline showing execution of the **Trivy Container Security Scan and Quality Gate** stage. |
| `57-trivy-quality-gate-results.png` | Trivy Quality Gate results generated from scanning the `node-monitoring-app:7` Docker image. |
| `58-jenkins-trivy-gate-passed.png` | Jenkins Pipeline showing Trivy Quality Gate Stage Passed. |
| `59-jenkins-trivy-quality-gate-success.png` | Jenkins Pipeline showing Trivy Quality Gate Success. |
| `60-hardened-production-dockerfile.png` | Dockerfile showing the rebuilt production ready docker base image. |


#### Amazon ECR Container Image Push Evidence

The Amazon ECR Container Image Push implementation is documented through the following screenshots:

| Screenshot                                      | Evidence                                                                                                                                                       |
| ----------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `61-jenkins-ecr-image-push-stage.png`           | Jenkinsfile containing the **Amazon ECR Container Image Push** stage used to authenticate with Amazon ECR, tag the Docker image, and push the validated image. |
| `62-jenkins-ecr-image-push-login-succeeded.png` | Jenkins Pipeline showing successful **Amazon ECR authentication** using the AWS CLI and Docker login.                                                          |
| `63-ecr-docker-push-success.png`                | Jenkins Pipeline showing the **Docker image successfully pushed** to the Amazon ECR repository.                                                                |
| `64-amazon-ecr-repository-image.png`            | Amazon ECR console showing the successfully published container image in the **`node-devsecops-repository`** repository.                                       |
| `65-ecr-cli-image-verification.png`             | AWS CLI output verifying that the container image was successfully published and is available in Amazon ECR.                                                   |
| `66-jenkins-ecr-image-verification.png`         | Jenkins Pipeline showing successful **Amazon ECR Image Verification** after the image push.                                                                    |
| `67-final-jenkins-pipeline-success.png`         | Jenkins Pipeline showing the complete CI/CD pipeline executing successfully after Amazon ECR image publishing and verification.                                |


## Amazon EKS Deployment Evidence

The Amazon EKS implementation is documented through the following screenshots.

| Screenshot | Evidence |
|---|---|
| `68-eks-cluster.png` | Amazon EKS cluster verification showing the provisioned Kubernetes cluster. |
| `69-eks-pods.png` | Kubernetes Pods running successfully in the EKS cluster. |
| `70-eks-service-loadbalancer.png` | Kubernetes Service and LoadBalancer configuration exposing the application. |
| `71-application-health.png` | Application health verification confirming the running application is healthy. |
| `72-eks-application-loadbalancer.png` | AWS Load Balancer associated with the Kubernetes application Service. |
| `73-eks-application-browser-health-check.png` | Browser-based verification of the deployed application's health endpoint. |
| `74-eks-prometheus-metrics.png` | Prometheus-compatible application metrics exposed by the running Node.js application. |
| `75-jenkins-ecr-eks-access-verification.png` | Jenkins verification of access to Amazon ECR and Amazon EKS. |
| `76-jenkins-automated-eks-deployment.png` | Jenkins pipeline showing automated Amazon EKS application deployment. |
| `77-jenkins-kubernetes-rollout-verification-passed.png` | Jenkins Kubernetes rollout verification showing successful application rollout. |
| `78-jenkins-hpa-verification.png` | Jenkins verification of the Kubernetes Horizontal Pod Autoscaler. |
| `79-jenkins-prometheus-servicemonitor-verification.png` | Jenkins verification of the Prometheus ServiceMonitor configuration. |
| `80-jenkins-kubernetes-service-verification-passed.png` | Jenkins verification showing successful Kubernetes Service validation. |
| `81-jenkins-eks-application-health-check-passed.png` | Jenkins EKS application health check showing successful application availability. |
| `82-jenkins-eks-deployment-pipeline-success.png` | Jenkins pipeline showing successful automated EKS deployment and verification. |
| `83-prometheus-servicemonitor-discovery.png` | Prometheus showing successful ServiceMonitor discovery. |
| `84-grafana-kubernetes-monitoring.png` | Grafana dashboard visualizing Kubernetes monitoring data. |
| `85-eks-application-health-endpoint.png` | Amazon EKS application health endpoint verification. |
| `86-eks-application.png` | Final browser verification of the running application deployed on Amazon EKS. |


#### Jenkinsfile — Unit Testing Stage

![Jenkinsfile Unit Testing Stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/30-jenkinsfile-unit-testing-stage.png)


#### Jenkins Pipeline — Unit Testing Build

![Jenkins Pipeline Unit Testing Build](screenshots/08-jenkins-ci-cd-devsecops-pipeline/31-jenkins-pipeline-unit-testing-build.png)

#### Unit Testing Stage — Successful Execution

![Unit Testing Stage Success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/32-unit-testing-stage-success.png)

#### Unit Testing — Jenkins Console Output

![Jenkins Unit Testing Console Output](screenshots/08-jenkins-ci-cd-devsecops-pipeline/33-unit-testing-console-output.png)


#### Jenkinsfile showing SonarCloud Analysis stage

![Jenkinsfile showing SonarCloud Analysis stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/34-jenkinsfile-showing-sonarcloud-analysis-stage.png)


#### Jenkins Pipeline showing SonarCloud Analysis stage

![Jenkins Pipeline showing SonarCloud Analysis stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/35-jenkins-pipeline-showing-sonarcloud-analysis-stage.png)



#### Jenkins Console — Successful SonarCloud Analysis

![Successful SonarCloud analysis in Jenkins console](screenshots/08-jenkins-ci-cd-devsecops-pipeline/36-sonarcloud-analysis-success-in-jenkins-console.png)


#### SonarCloud project Dashboard

![SonarCloud project dashboard](screenshots/08-jenkins-ci-cd-devsecops-pipeline/37-sonarcloud-project-dashboard.png)


#### SonarCloud Project Overview and Results

![SonarCloud project overview and results](screenshots/08-jenkins-ci-cd-devsecops-pipeline/38-sonarcloud-project-overview-results.png)


##### Jenkins Pipeline stages overview

![Jenkins Pipeline stages overview](screenshots/08-jenkins-ci-cd-devsecops-pipeline/39-jenkins-pipeline-stages-overview.png)


#### sonarcloud-quality-gate-success
![sonarcloud-quality-gate-success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/40-sonarcloud-quality-gate-success.png)

#### Snyk Security Plugin Installed

![Snyk Security Plugin Installed](screenshots/08-jenkins-ci-cd-devsecops-pipeline/41-snyk-security-plugin-installed.png)

#### Snyk Credential Configuration

![Snyk Credential Configuration](screenshots/08-jenkins-ci-cd-devsecops-pipeline/42-snyk-credential-configured.png)

#### Snyk Tool Configuration

![Snyk Tool Configuration](screenshots/08-jenkins-ci-cd-devsecops-pipeline/43-snyk-tool-configuration.png)

#### Jenkinsfile — Snyk SCA Stage

![Jenkinsfile Snyk SCA Stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/44-jenkinsfile-snyk-sca-stage.png)

#### Jenkins Pipeline — Snyk SCA Stage

![Jenkins Pipeline Snyk SCA Stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/45-jenkins-pipeline-snyk-sca-stage.png)

#### Snyk Vulnerability Results

![Snyk Vulnerability Results](screenshots/08-jenkins-ci-cd-devsecops-pipeline/46-snyk-vulnerability-results.png)


#### Snyk Software Compsition Analysis Success
![Snyk-SCA-Success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/47-snyk-sca-success.png)


#### Jenkinsfile — Docker Image Build Stage**

![Jenkinsfile Docker Build Stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/48-jenkinsfile-docker-build-stage.png)


#### Jenkins Pipeline — Docker Build Stage**

![Jenkins Pipeline Docker Build Stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/49-jenkins-pipeline-docker-build-stage.png)


#### Docker Build — Successful Execution**

![Docker Build Success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/50-docker-build-success.png)

#### Docker Image Created on Jenkins**

![Docker Image Created on Jenkins](screenshots/08-jenkins-ci-cd-devsecops-pipeline/51-docker-image-created-on-jenkins.png)



#### Jenkinsfile — Trivy Container Scan Stage**

![Jenkinsfile Trivy Container Scan Stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/52-jenkinsfile-trivy-container-scan-stage.png)



#### Jenkins Pipeline — Trivy Container Scan Stage**

![Jenkins Pipeline Trivy Container Scan Stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/53-jenkins-pipeline-trivy-container-scan-stage.png)


#### Trivy Container Vulnerability Results**

![Trivy Container Vulnerability Results](screenshots/08-jenkins-ci-cd-devsecops-pipeline/54-trivy-container-vulnerability-results.png)


#### Jenkinsfile Trivy Quality Gate Integration

![Jenkinsfile Trivy Quality Gate](screenshots/08-jenkins-ci-cd-devsecops-pipeline/55-jenkinsfile-trivy-quality-gate.png)


#### Jenkins Pipeline Trivy Quality Gate Stage

![Jenkins Pipeline Trivy Quality Gate Stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/56-jenkins-pipeline-trivy-quality-gate-stage.png)


#### Trivy Quality Gate Results

![Trivy Quality Gate Results](screenshots/08-jenkins-ci-cd-devsecops-pipeline/57-trivy-quality-gate-results.png)


#### Jenkins Trivy Quality Gate Stage Passed

![Jenkins Trivy Quality Gate Passed](screenshots/08-jenkins-ci-cd-devsecops-pipeline/58-jenkins-trivy-gate-passed.png)


#### Jenkins Trivy Quality Gate Success

![Jenkins Trivy Quality Gate Success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/59-jenkins-trivy-quality-gate-success.png)


#### Hardened Production Ready Dockerfile

![hardened-production-dockerfile](screenshots/08-jenkins-ci-cd-devsecops-pipeline/60-hardened-production-dockerfile.png)


#### Amazon ECR Container Image Push Evidence

![jenkins-ecr-image-push-stage](screenshots/08-jenkins-ci-cd-devsecops-pipeline/61-jenkins-ecr-image-push-stage.png)

![jenkins-ecr-image-push-login-succeeded](screenshots/08-jenkins-ci-cd-devsecops-pipeline/62-jenkins-ecr-image-push-login-succeeded.png)

![ecr-docker-push-success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/63-ecr-docker-push-success.png)

![amazon-ecr-repository-image](screenshots/08-jenkins-ci-cd-devsecops-pipeline/64-amazon-ecr-repository-image.png)

![ecr-cli-image-verification](screenshots/08-jenkins-ci-cd-devsecops-pipeline/65-ecr-cli-image-verification.png)

![jenkins-ecr-image-verification](screenshots/08-jenkins-ecr-image-verification.png)

![final-jenkins-pipeline-success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/67-final-jenkins-pipeline-success.png)


## Amazon EKS Deployment Evidence

### Manual Amazon EKS Deployment

![eks-cluster](screenshots/08-jenkins-ci-cd-devsecops-pipeline/68-eks-cluster.png)


![eks-pods](screenshots/08-jenkins-ci-cd-devsecops-pipeline/69-eks-pods.png)


![eks-service-loadbalancer](screenshots/08-jenkins-ci-cd-devsecops-pipeline/70-eks-service-loadbalancer.png)


![application-health](screenshots/08-jenkins-ci-cd-devsecops-pipeline/71-application-health.png)


![eks-application-loadbalancer](screenshots/08-jenkins-ci-cd-devsecops-pipeline/72-eks-application-loadbalancer.png)


![eks-application-browser-health-check](screenshots/08-jenkins-ci-cd-devsecops-pipeline/73-eks-application-browser-health-check.png)


![eks-prometheus-metrics](screenshots/08-jenkins-ci-cd-devsecops-pipeline/74-eks-prometheus-metrics.png)


### Automated Amazon EKS Deployment

![jenkins-ecr-eks-access-verification](screenshots/08-jenkins-ci-cd-devsecops-pipeline/75-jenkins-ecr-eks-access-verification.png)


![jenkins-automated-eks-deployment](screenshots/08-jenkins-ci-cd-devsecops-pipeline/76-jenkins-automated-eks-deployment.png)


![jenkins-kubernetes-rollout-verification-passed](screenshots/08-jenkins-ci-cd-devsecops-pipeline/77-jenkins-kubernetes-rollout-verification-passed.png)


![jenkins-hpa-verification](screenshots/08-jenkins-ci-cd-devsecops-pipeline/78-jenkins-hpa-verification.png)


![jenkins-prometheus-servicemonitor-verification](screenshots/08-jenkins-ci-cd-devsecops-pipeline/79-jenkins-prometheus-servicemonitor-verification.png)


![jenkins-kubernetes-service-verification-passed](screenshots/08-jenkins-ci-cd-devsecops-pipeline/80-jenkins-kubernetes-service-verification-passed.png)


![jenkins-eks-application-health-check-passed](screenshots/08-jenkins-ci-cd-devsecops-pipeline/81-jenkins-eks-application-health-check-passed.png)


![jenkins-eks-deployment-pipeline-success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/82-jenkins-eks-deployment-pipeline-success.png)


![prometheus-servicemonitor-discovery](screenshots/08-jenkins-ci-cd-devsecops-pipeline/83-prometheus-servicemonitor-discovery.png)


![grafana-kubernetes-monitoring](screenshots/08-jenkins-ci-cd-devsecops-pipeline/84-grafana-kubernetes-monitoring.png)


![eks-application-health-endpoint](screenshots/08-jenkins-ci-cd-devsecops-pipeline/85-eks-application-health-endpoint.png)


![eks-application](screenshots/08-jenkins-ci-cd-devsecops-pipeline/86-eks-application.png)


---

## Outcome

The project has progressed from source-code development to a running, secure, automated, and monitored Kubernetes application on Amazon EKS.

The implemented solution successfully demonstrates:

- Source-code management through GitHub
- Automated CI/CD through Jenkins
- Automated unit testing with Jest and Supertest
- Static Application Security Testing (SAST) with SonarCloud
- Software Composition Analysis (SCA) with Snyk
- Container vulnerability scanning with Trivy
- HIGH/CRITICAL security quality gating before image promotion
- Container image publishing and verification through Amazon ECR
- Manual Amazon EKS deployment validation
- Automated Amazon EKS deployment through Jenkins
- Kubernetes rollout and Service verification
- AWS Load Balancer-based application exposure
- Kubernetes Horizontal Pod Autoscaler (HPA) verification
- Prometheus ServiceMonitor discovery and metrics collection
- Grafana monitoring and visualization
- Application health verification through the deployed environment

The project therefore demonstrates an end-to-end DevSecOps delivery lifecycle that integrates **CI/CD automation, security controls, containerization, cloud-native deployment, autoscaling, and observability** across the application lifecycle.

The next planned enhancement is **OWASP ZAP Dynamic Application Security Testing (DAST)** to extend security validation into the running application environment.

---

## Prerequisites

The following tools and services are required or recommended for working with this project.

### Local Development

- Git
- Node.js
- npm
- Visual Studio Code
- Docker Desktop

### AWS & Infrastructure

- AWS CLI
- Terraform
- kubectl
- Helm
- An AWS account with appropriate IAM permissions

### Kubernetes

- Amazon EKS access for cloud deployment
- Minikube *(optional, for local Kubernetes testing)*

### CI/CD & DevSecOps

- Jenkins
- SonarCloud account and project configuration
- Snyk account and authentication
- Trivy
- OWASP ZAP *(required for the upcoming DAST milestone)*

### Additional Requirements

- GitHub repository
- Amazon ECR repository
- Amazon EKS cluster
- Appropriate AWS IAM permissions for ECR, EKS, EC2, VPC, and related resources

---

## Running the Project Locally

### 1. Clone the Repository


git clone https://github.com/Jefferson-ohis1/end-to-end-node-ci-cd-devsecops.git
cd end-to-end-node-ci-cd-devsecops


### 2. Install Application Dependencies

cd app
npm install

### 3. Run the Application

npm start

> The application will be available at: http://localhost:3000

### 4. Run Unit Tests

npm test

### 5. Verify Application Endpoints

Application: http://localhost:3000/

Health endpoint: http://localhost:3000/health

Prometheus metrics: http://localhost:3000/metrics

### 6. Build the Docker Image

From the app/ directory: docker build -t node-monitoring-app:v1 .

### 7. Run the Docker Container

docker run -d \
  --name node-monitoring-container \
  -p 3000:3000 \
  node-monitoring-app:v1

### 8. Verify the Container

Check the running container: docker ps

Check the application health endpoint: http://localhost:3000/health

Check the Prometheus metrics endpoint: http://localhost:3000/metrics


### 9. Stop and Remove the Container

docker stop node-monitoring-container
docker rm node-monitoring-container


> Note: Local execution is intended for application development, unit testing, and Docker validation. Production deployment is performed through the Jenkins CI/CD pipeline to Amazon ECR and Amazon EKS.

---

## Future Enhancements

The following enhancements are planned for future iterations of the project:

### Next Milestone

- Integrate OWASP ZAP Dynamic Application Security Testing (DAST)
- Automate runtime security testing against the deployed Amazon EKS application
- Evaluate and document OWASP ZAP security findings
- Integrate DAST results into the Jenkins security workflow

### Additional Enhancements

- Add pull request validation and automated pre-merge checks
- Add secrets detection and scanning
- Introduce additional CI/CD security controls
- Expand Prometheus and Grafana monitoring dashboards
- Add additional application and Kubernetes observability
- Evaluate GitHub Actions as an alternative or complementary CI/CD workflow

---

## Project Status

**Current Phase:** Phase 8 – Jenkins CI/CD & DevSecOps Pipeline

**Latest Completed Milestone:** Amazon EKS Application Deployment, Kubernetes Verification, HPA, and Prometheus/Grafana Monitoring

### Completed Security Controls

- SonarCloud SAST
- SonarCloud Quality Gate
- Snyk SCA
- Trivy Container Security Scanning
- Trivy HIGH/CRITICAL Security Quality Gate

### Completed Container Promotion & Release Controls

- Production Image Verification
- Application Health Check
- Amazon ECR Authentication
- Amazon ECR Image Tagging
- Amazon ECR Image Publishing
- Amazon ECR Image Verification

### Completed Kubernetes Controls

- Manual Amazon EKS Deployment
- Automated Amazon EKS Deployment through Jenkins
- Kubernetes Rollout Verification
- Kubernetes Service Verification
- AWS Load Balancer Verification
- EKS Application Health Verification
- Kubernetes HPA Verification
- HPA Metrics Verification

### Completed Monitoring Controls

- Prometheus ServiceMonitor Configuration
- Prometheus ServiceMonitor Discovery
- Prometheus Application Metrics
- Kubernetes Metrics Collection
- Grafana Kubernetes Monitoring and Visualization

### Next Milestone

#### OWASP ZAP Dynamic Application Security Testing (DAST)

The application is currently deployed, externally accessible, and observable through Amazon EKS, Prometheus, and Grafana. This provides the runtime target required for the next security layer.

OWASP ZAP will be integrated to perform dynamic security testing against the running application and extend the DevSecOps pipeline with runtime application security validation.


---

## Final Project Objective

The objective of this project is to demonstrate how a modern cloud-native application can be developed, secured, containerized, deployed, monitored, and continuously delivered through an automated DevSecOps workflow on AWS.

The implemented solution currently demonstrates the core delivery lifecycle:

```text
GitHub
   ↓
Jenkins
   ↓
Unit Testing
   ↓
SonarCloud SAST
   ↓
Snyk SCA
   ↓
Docker
   ↓
Trivy
   ↓
Amazon ECR
   ↓
Amazon EKS
   ↓
Kubernetes
   ↓
HPA
   ↓
Prometheus
   ↓
Grafana
```

The next planned security layer is:

```text
Running Amazon EKS Application
            ↓
       OWASP ZAP
            ↓
           DAST
```

> Integrating OWASP ZAP will extend the existing security controls beyond source-code, dependency, and container security into dynamic runtime application security testing.

> The resulting platform will provide a broader end-to-end DevSecOps lifecycle that combines CI/CD automation, security quality gates, container security, cloud-native deployment, autoscaling, observability, and runtime security testing.

---

## Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Passionate about building secure, automated, and scalable cloud infrastructure using DevOps and DevSecOps best practices.

- **GitHub:** https://github.com/Jefferson-ohis1
- **LinkedIn:** https://www.linkedin.com/in/jefferson-ohis-oviosu-5a982a168

---
