# End-to-End Node.js CI/CD & DevSecOps Pipeline on AWS

> A comprehensive cloud-native DevSecOps portfolio project demonstrating automated testing, source-code security, dependency security, container security, container image promotion, Amazon ECR publishing, Amazon EKS deployment, Kubernetes orchestration, autoscaling, observability, and runtime application security testing using Node.js, Jenkins, Docker, Terraform, AWS, SonarCloud, Snyk, Trivy, OWASP ZAP, Prometheus, and Grafana.


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

> A comprehensive portfolio project demonstrating modern DevOps and DevSecOps practices using Node.js, Docker, Terraform, Jenkins, AWS, Kubernetes, SonarCloud, Snyk, Trivy, OWASP ZAP, Prometheus, and Grafana.

---

## Table of Contents

1. [Project Overview](#project-overview)
2. [Project Objectives](#project-objectives)
3. [Key Features](#key-features)
4. [Project Structure](#project-structure)
5. [Repository Structure](#repository-structure)
6. [Current Progress](#current-progress)
7. [Project Roadmap](#project-roadmap)
8. [Solution Architecture](#solution-architecture)
9. [Container Image Promotion Flow](#container-image-promotion-flow)
10. [Amazon EKS Deployment Architecture](#amazon-eks-deployment-architecture)
11. [Manual Amazon EKS Deployment](#manual-amazon-eks-deployment)
12. [Automated Amazon EKS Deployment](#automated-amazon-eks-deployment)
13. [Kubernetes Deployment and Runtime Architecture](#kubernetes-deployment-and-runtime-architecture)
14. [Prometheus and Grafana Monitoring](#prometheus-and-grafana-monitoring)
15. [OWASP ZAP Dynamic Application Security Testing](#owasp-zap-dynamic-application-security-testing)
16. [OWASP ZAP Security Hardening and Warning Reduction](#owasp-zap-security-hardening-and-warning-reduction)
17. [OWASP ZAP Controlled Security Quality Gate](#owasp-zap-controlled-security-quality-gate)
18. [Final OWASP ZAP Security Gate Outcome](#final-owasp-zap-security-gate-outcome)
19. [Security Control Strategy](#security-control-strategy)
20. [Release Promotion Model](#release-promotion-model)
21. [Current Pipeline Flow](#current-pipeline-flow)
22. [Documentation](#documentation)
23. [Screenshots folder](#screenshots-folder)
24. [AWS Infrastructure Provisioned](#aws-infrastructure-provisioned)
25. [Technology Stack](#technology-stack)
26. [Project Workflow](#project-workflow)
27. [Implementation Phases](#implementation-phases)
28. [Outcome](#outcome)
29. [Prerequisites](#prerequisites)
30. [Project Status](#project-status)
31. [Final Project Objective](#final-project-objective)
32. [Author](#author)

---

## Project Overview

This repository demonstrates the design, implementation, deployment, security validation, monitoring, and runtime security testing of an end-to-end DevSecOps pipeline for a containerized Node.js monitoring application on Amazon Web Services (AWS).

The project integrates modern DevOps, DevSecOps, cloud-native, Infrastructure as Code (IaC), Kubernetes, observability, and application security practices to demonstrate how an application progresses from source code through automated testing, security validation, containerization, image promotion, Kubernetes deployment, autoscaling, runtime monitoring, and dynamic application security testing.

The implemented solution integrates:

- Infrastructure as Code with Terraform
- Containerization with Docker
- Continuous Integration and Continuous Deployment with Jenkins
- Static Application Security Testing (SAST) with SonarCloud
- Software Composition Analysis (SCA) with Snyk
- Container vulnerability scanning with Trivy
- Trivy HIGH/CRITICAL security quality gating
- Container image publishing with Amazon Elastic Container Registry (Amazon ECR)
- Container image verification
- Container orchestration with Amazon Elastic Kubernetes Service (Amazon EKS)
- Manual Amazon EKS deployment validation
- Automated Amazon EKS deployment through Jenkins
- Kubernetes rollout and service verification
- Kubernetes Horizontal Pod Autoscaling (HPA)
- Prometheus application and Kubernetes metrics collection
- Grafana monitoring and visualization
- Dynamic Application Security Testing (DAST) with OWASP ZAP
- Runtime web-application security scanning against the deployed Amazon EKS application
- Jenkins integration of DAST execution and security-result evaluation

The project follows an incremental engineering approach in which each phase is designed, implemented, tested, validated, and documented before progressing to the next stage.

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
- Implement Dynamic Application Security Testing (DAST) using OWASP ZAP.
- Perform runtime security testing against the deployed Amazon EKS application.
- Generate and evaluate OWASP ZAP security findings.
- Integrate DAST execution and security-result evaluation into Jenkins.

### Future Objectives

The following objectives represent planned extensions to the current implementation:

- Implement Pull Request Validation as an additional source-control security and quality control.
- Implement automated Secrets Detection to help prevent sensitive credentials and secrets from being committed.
- Integrate GitHub Webhooks with Jenkins for automated pipeline triggering.
- Evaluate GitHub Actions as an additional CI/CD automation workflow.
- Complete and validate the broader end-to-end DevSecOps platform.

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
- OWASP ZAP Dynamic Application Security Testing (DAST)
- Runtime application security scanning
- Jenkins DAST security-result evaluation
- Security validation before and after deployment

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

### Runtime Application Security

- OWASP ZAP baseline security scanning
- Dynamic security testing against the externally accessible EKS application
- DAST report generation
- Security finding evaluation
- Jenkins security-gate integration

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

## Current Progress

The project has progressed from application development and containerization through AWS infrastructure provisioning, CI/CD automation, DevSecOps security validation, Amazon ECR image publishing, Amazon EKS deployment, Kubernetes orchestration, runtime monitoring, and dynamic application security testing.

✅ Completed

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
- ✔ OWASP ZAP Dynamic Application Security Testing (DAST)
- ✔ Runtime application security scanning
- ✔ DAST security-result evaluation
- ✔ Jenkins DAST pipeline integration


### Latest Milestone

The latest completed milestone is the implementation and successful verification of **OWASP ZAP Dynamic Application Security Testing (DAST) with a controlled security quality gate**.

The implementation progressed through two important validation states:

1. **Initial ZAP baseline scan:** 63 PASS, 4 WARN-NEW, 0 FAIL-NEW.
2. **Security hardening and controlled-gate validation:** 65 PASS, 2 WARN-NEW, 0 FAIL-NEW.
3. **Controlled quality gate:** ZAP returned exit code `2` for warnings, the warnings were explicitly reviewed and accepted, and Jenkins continued the pipeline.
4. **Final pipeline result:** `Finished: SUCCESS`.

This milestone means the project now performs runtime security testing against the externally accessible EKS application and applies explicit decision logic to ZAP warning and failure conditions.

---

## Project Roadmap

| Phase | Status |
|---|---|
| **Project Initialization** | ✅ Completed |
| **Application Refactoring** | ✅ Completed |
| **Unit Testing** | ✅ Completed |
| **Docker Containerization** | ✅ Completed |
| **Terraform Infrastructure** | ✅ Completed |
| **Jenkins Server Setup** | ✅ Completed |
| **Jenkins Installation & Configuration** | ✅ Completed |
| **Jenkins CI/CD & DevSecOps Pipeline** | ✅ Completed |
| **Amazon ECR Image Publishing** | ✅ Completed |
| **Amazon EKS Deployment** | ✅ Completed |
| **Kubernetes Rollout Verification** | ✅ Completed |
| **Prometheus & Grafana Monitoring** | ✅ Completed |
| **OWASP ZAP DAST** | ✅ Completed |
| **Pull Request Validation** | ⏳ Planned |
| **Secrets Detection** | ⏳ Planned |
| **GitHub Webhook Integration** | ⏳ Planned |
| **GitHub Actions** | ⏳ Planned |
| **Complete DevSecOps Platform Integration & Validation** | ⏳ Planned |

### Legend

- ✅ Completed
- 🚧 In Progress
- ⏳ Planned

---

## Solution Architecture

The solution architecture demonstrates the implemented end-to-end DevSecOps lifecycle of the Node.js monitoring application, covering source-code management, automated testing, security validation, container image promotion, Amazon EKS deployment, Kubernetes verification, observability, and runtime application security testing.

### End-to-End DevSecOps Architecture

```text
GitHub
    │
    ▼
Source Code
    │
    ▼
Jenkins
    │
    ├── Checkout Source Code
    │
    ├── Install Dependencies
    │
    ├── Unit Testing
    │     └── Jest / Supertest
    │
    ├── SonarCloud
    │     ├── SAST Analysis
    │     └── Quality Gate
    │
    ├── Snyk
    │     └── SCA / Dependency Analysis
    │
    ├── Docker
    │     └── Build Container Image
    │
    ├── Production Image Verification
    │
    ├── Trivy
    │     ├── Container Vulnerability Scan
    │     ├── Alpine OS Package Analysis
    │     ├── Node.js Dependency Analysis
    │     └── HIGH/CRITICAL Security Quality Gate
    │              │
    │              ├── FAIL ──► Stop Pipeline
    │              │
    │              └── PASS
    │
    ├── Application Health Check
    │     └── /health
    │
    ├── Amazon ECR
    │     ├── Authenticate
    │     ├── Tag Validated Image
    │     ├── Push Image
    │     └── Verify Published Image
    │
    ▼
Amazon EKS
    │
    ├── Kubernetes Deployment
    │     ├── Application Pods
    │     └── ECR Image
    │
    ├── Kubernetes Service
    │     └── LoadBalancer
    │
    ├── AWS Load Balancer
    │     └── External Application Access
    │
    ├── Kubernetes Rollout Verification
    │
    ├── Horizontal Pod Autoscaler
    │
    └── Kubernetes Service Verification
           │
           ▼
Running Node.js Application
    │
    ├── /
    ├── /health
    └── /metrics
           │
           ├───────────────► Prometheus
           │                    │
           │                    ▼
           │                 Grafana
           │
           └───────────────► OWASP ZAP Baseline DAST
                                │
                                ▼
                         DAST Security Results
                                │
                                ├── FAIL findings ──► Pipeline FAILURE
                                │
                                ├── WARN findings ──► Review & Accept ──► Continue
                                │
                                └── No findings ────► Continue
```

### DevSecOps Security Flow

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
     ├── FAIL ──► Pipeline Stops
     │
     └── PASS
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
Running Application
     │
     ├── Prometheus Metrics
     │
     ├── Grafana Monitoring
     │
     └── OWASP ZAP DAST
              │
              ▼
       Runtime Security Results
```

The security controls are intentionally layered so that different tools address different stages of the software delivery lifecycle.

### Architecture Layers

The implemented solution is organized into the following architectural layers:

| Layer | Technology | Responsibility | Status |
|---|---|---|---|
| **Source Control** | GitHub | Application source-code management and version control | ✅ Implemented |
| **CI/CD Automation** | Jenkins | Pipeline orchestration and automated software delivery | ✅ Implemented |
| **Application Testing** | Jest / Supertest | Automated application testing | ✅ Implemented |
| **SAST** | SonarCloud | Static source-code security and quality analysis | ✅ Implemented |
| **SCA** | Snyk | Third-party dependency and open-source vulnerability analysis | ✅ Implemented |
| **Containerization** | Docker | Application packaging and reproducible image creation | ✅ Implemented |
| **Container Security** | Trivy | Container image vulnerability scanning | ✅ Implemented |
| **Security Quality Gate** | Trivy | Blocks configured HIGH/CRITICAL container vulnerabilities | ✅ Implemented |
| **Container Registry** | Amazon ECR | Storage, publishing, and verification of validated images | ✅ Implemented |
| **Container Orchestration** | Amazon EKS | Kubernetes-based application deployment and management | ✅ Implemented |
| **Application Exposure** | Kubernetes Service / AWS Load Balancer | External application access | ✅ Implemented |
| **Application Scaling** | Kubernetes HPA | Automatic application replica scaling | ✅ Implemented |
| **Metrics Discovery** | Prometheus ServiceMonitor | Application metrics discovery | ✅ Implemented |
| **Metrics Collection** | Prometheus | Application and Kubernetes metrics collection | ✅ Implemented |
| **Visualization** | Grafana | Application, Kubernetes, and infrastructure monitoring | ✅ Implemented |
| **Runtime Security** | OWASP ZAP | Dynamic Application Security Testing against the running application | ✅ Implemented |


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

## Manual Amazon EKS Deployment

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

### Manual vs Automated Amazon EKS Deployment

The project intentionally implements both deployment approaches.

#### Manual vs Automated Amazon EKS Deployment

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

### Kubernetes Rollout and Availability Verification

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

### Kubernetes Horizontal Pod Autoscaler

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

### Why Grafana Was Implemented

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

### Monitoring Architecture

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

## OWASP ZAP Dynamic Application Security Testing

OWASP ZAP Baseline DAST provides the runtime application-security layer of the DevSecOps architecture.

Unlike SonarCloud, Snyk, and Trivy, which evaluate source code, dependencies, and container images before deployment, OWASP ZAP evaluates the behavior of the running application.

OWASP ZAP was implemented as the runtime application security layer after the application was successfully deployed on Amazon EKS and externally accessible through Amazon EKS and its AWS Load Balancer.

The scan is executed against the externally accessible Kubernetes LoadBalancer endpoint after the application has been deployed and verified.

### DAST Execution Flow

```text
Amazon EKS Deployment
        │
        ▼
Kubernetes Rollout Verification
        │
        ▼
EKS Application Health Check
        │
        ▼
Retrieve LoadBalancer Endpoint
        │
        ▼
OWASP ZAP Baseline DAST
        │
        ├── PASS
        ├── WARN
        └── FAIL
        │
        ▼
Controlled ZAP Quality Gate
        │
        ▼
Jenkins Pipeline Result
```

### ZAP Baseline Scan Execution

The Jenkins pipeline executes the OWASP ZAP Baseline scan using the `zaproxy/zap-stable` Docker image.

The scan generates:

```text
zap-report.html
zap-report.json
```

The ZAP scan targeted the deployed Node.js application and its externally accessible endpoints, including:

```text
/
 /health
 /metrics
 /robots.txt
 /sitemap.xml
```

The scan therefore validates the running application rather than only analyzing source code or the Docker image.


### Initial OWASP ZAP DAST Result

The initial ZAP scan established the baseline security result:

| Result | Count |
|---|---:|
| **PASS** | **63** |
| **WARN-NEW** | **4** |
| **FAIL-NEW** | **0** |
| **FAIL-INPROG** | **0** |
| **WARN-INPROG** | **0** |
| **INFO** | **0** |
| **IGNORE** | **0** |

The four initial warning categories were:

1. **Storable and Cacheable Content [10049]**
2. **CSP: Failure to Define Directive with No Fallback [10055]**
3. **Timestamp Disclosure - Unix [10096]**
4. **Cross-Origin-Embedder-Policy Header Missing or Invalid [90004]**

Most importantly:

```text
FAIL-NEW: 0
```

No fail-level ZAP findings were detected.

### Initial Evidence

![OWASP ZAP DAST initial scan](screenshots/08-jenkins-ci-cd-devsecops-pipeline/87-owasp-zap-dast-scan.png)

> Initial OWASP ZAP Baseline DAST execution against the Amazon EKS LoadBalancer endpoint.


![OWASP ZAP initial security results](screenshots/08-jenkins-ci-cd-devsecops-pipeline/88-owasp-zap-security-results.png)

> Initial ZAP security results showing 63 passed checks, 4 warning-level findings, and 0 fail-level findings.

The original Jenkins behavior treated ZAP exit code `2` as a stage failure, resulting in the initial pipeline state:

```text
ZAP Exit Code: 2
ERROR: script returned exit code 2
Finished: FAILURE
```

![Initial OWASP ZAP pipeline result](screenshots/08-jenkins-ci-cd-devsecops-pipeline/89-owasp-zap-pipeline-result.png)

> Initial Jenkins pipeline result showing that ZAP warnings caused the pipeline to finish with FAILURE.

---

## OWASP ZAP Security Hardening and Warning Reduction

After the initial four-warning baseline was established, application-level security hardening was implemented before the ZAP scan was evaluated again.

The remediation focused on the two warning categories related to missing or insufficient HTTP security-header configuration:

- **CSP: Failure to Define Directive with No Fallback [10055]**
- **Cross-Origin-Embedder-Policy Header Missing or Invalid [90004]**

The application was updated to return stronger HTTP security headers. Verification of the application response headers showed security controls including:

```text
Content-Security-Policy
Cross-Origin-Opener-Policy
Cross-Origin-Resource-Policy
Strict-Transport-Security
X-Content-Type-Options
X-Frame-Options
Referrer-Policy
Permissions-Policy
```

The security-header hardening removed the two corresponding ZAP warnings.

### Warning Reduction

```text
Initial Scan
63 PASS
4 WARN-NEW
0 FAIL-NEW
       │
       │ Security-header hardening
       ▼
Follow-up Scan
65 PASS
2 WARN-NEW
0 FAIL-NEW
```

This represents a reduction from **4 warning categories to 2 warning categories** while increasing the number of passed checks from **63 to 65**.

The two warnings that remained were:

```text
10049 — Non-Storable Content
10096 — Timestamp Disclosure - Unix
```

These two findings were reviewed and accepted under the controlled DAST quality-gate policy.

---

## OWASP ZAP Controlled Security Quality Gate

The ZAP stage was subsequently updated so that a non-zero ZAP exit code was no longer treated as an undifferentiated pipeline failure.

The Jenkins pipeline captures the ZAP exit code and applies explicit decision logic:

```text
OWASP ZAP Baseline DAST
          │
          ▼
    ZAP Scan Results
          │
     ┌────┴────┐
     │         │
   FAIL       WARN
     │         │
     ▼         ▼
 Pipeline   Review
 FAILURE       │
               ▼
        Accept Reviewed
           Warnings
               │
               ▼
        Continue Pipeline
               │
               ▼
        Pipeline SUCCESS
```

### Controlled Quality-Gate Logic

| ZAP Result | Pipeline Behavior |
|---|---|
| **Exit Code `0`** | No warnings/failures; pipeline continues |
| **Exit Code `2`** | Warnings detected; warnings are reviewed and accepted; pipeline continues |
| **Any other exit code** | Fail-level finding or scan error; pipeline fails |

This establishes an explicit distinction between:

- a security warning that requires review,
- a fail-level security finding that should block delivery, and
- an actual scan execution error.

---

### Final ZAP Scan Result

After security-header hardening and integration of the controlled quality gate, the verified ZAP scan produced:

| Result | Count |
|---|---:|
| **PASS** | **65** |
| **WARN-NEW** | **2** |
| **FAIL-NEW** | **0** |
| **FAIL-INPROG** | **0** |
| **WARN-INPROG** | **0** |
| **INFO** | **0** |
| **IGNORE** | **0** |

The final ZAP output was:

```text
FAIL-NEW: 0
FAIL-INPROG: 0
WARN-NEW: 2
WARN-INPROG: 0
INFO: 0
IGNORE: 0
PASS: 65
```

The two remaining warning categories were:

```text
Non-Storable Content [10049]
Timestamp Disclosure - Unix [10096]
```

### 10049 — Non-Storable Content

The application intentionally applies:

```text
Cache-Control: no-store
```

to application and monitoring responses.

This behavior is an intentional response-caching control rather than an application vulnerability. The warning is therefore currently accepted under the DAST quality-gate policy.

### 10096 — Timestamp Disclosure - Unix

The finding was traced to the standard Prometheus metric:

```text
process_start_time_seconds
```

exposed through the application's `/metrics` endpoint.

This metric provides process start-time information for application observability and monitoring. It is intentionally exposed as part of the application's Prometheus instrumentation and does not represent sensitive application data.

The warning is therefore currently accepted under the DAST quality-gate policy.

---

### Controlled ZAP Quality-Gate Evidence

![OWASP ZAP Controlled Quality Gate](screenshots/08-jenkins-ci-cd-devsecops-pipeline/90-owasp-zap-controlled-quality-gate.png)

The Jenkins console demonstrates:

```text
ZAP exit code: 2
⚠️ ZAP reported WARNINGS.
⚠️ Warnings have been reviewed and are accepted.
✅ Continuing pipeline.
```

The controlled gate therefore successfully converted the ZAP warning condition into an explicit, documented decision rather than allowing exit code `2` to terminate the pipeline.

---

### Successful Pipeline Completion

![OWASP ZAP Pipeline Success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/91-owasp-zap-pipeline-success.png)

After the ZAP stage completed, Jenkins executed the post actions and reported:

```text
✅ Pipeline execution completed successfully.
✅ All configured pipeline stages passed.
Finished: SUCCESS
```

This confirms that:

1. OWASP ZAP DAST executed successfully.
2. Zero fail-level findings were detected.
3. Two warning-level findings remained.
4. The remaining warnings were reviewed and accepted.
5. The controlled quality gate allowed the pipeline to continue.
6. The overall Jenkins pipeline completed successfully.

---

## Final OWASP ZAP Security Gate Outcome

The final implementation can be summarized as:

```text
OWASP ZAP Baseline DAST
          │
          ▼
      Scan Results
          │
          ├── FAIL findings
          │       │
          │       └──► Pipeline FAILURE
          │
          ├── WARN findings
          │       │
          │       ├──► Review
          │       ├──► Accept reviewed warnings
          │       └──► Continue Pipeline
          │
          └── No findings
                  │
                  └──► Continue Pipeline
```

### Current DAST Validation Status

> **OWASP ZAP DAST: ✅ Implemented and Verified**

> **Controlled ZAP Security Quality Gate: ✅ Implemented and Verified**

> **Final ZAP Result: 65 PASS / 2 WARN-NEW / 0 FAIL-NEW**

> **Final Jenkins Pipeline Result: ✅ SUCCESS**

The project therefore does **not** claim that all ZAP warnings have been eliminated. Instead, the implementation demonstrates a more accurate DevSecOps control: actionable security-header findings were remediated, the remaining warnings were explicitly assessed, and the pipeline now distinguishes accepted warnings from fail-level security conditions.

---

## Security Control Strategy

The pipeline applies security controls at multiple stages of the software delivery lifecycle.

| Security Layer | Tool | Purpose | Implementation Status |
|---|---|---|---|
| **Source Code Security** | SonarCloud | Static Application Security Testing (SAST) and source-code quality analysis | ✅ Implemented |
| **Dependency Security** | Snyk | Software Composition Analysis (SCA) and dependency vulnerability analysis | ✅ Implemented |
| **Container Security** | Trivy | Docker container image vulnerability scanning | ✅ Implemented |
| **Release Security Quality Gate** | Trivy | Prevent HIGH/CRITICAL container vulnerabilities from being promoted | ✅ Implemented |
| **Container Image Promotion** | Amazon ECR | Store and promote security-validated container images | ✅ Implemented |
| **Deployment Security** | Amazon EKS | Deploy validated container images into the Kubernetes environment | ✅ Implemented |
| **Runtime Monitoring** | Prometheus | Collect application and Kubernetes metrics | ✅ Implemented |
| **Visualization** | Grafana | Visualize application and Kubernetes metrics | ✅ Implemented |
| **Runtime/Application Security** | OWASP ZAP | Dynamic Application Security Testing against the deployed application | ✅ Implemented |


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
    ▼
PASS — Application Health Check
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
    │               │                 │
    │               │                 ▼
    │               │          Security Results
    │               │                 │
    │               │                 ▼
    │               │          Jenkins Evaluation
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
8. OWASP ZAP dynamically tests the deployed application for potential web-application security issues.
9. Jenkins evaluates the DAST results and applies the configured security-gate behavior.


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
PASS — Application Health Check
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
    ▼
DAST Security Evaluation
```

---

## Current Pipeline Flow

The current Jenkins CI/CD and DevSecOps pipeline has successfully implemented the following stages:

```text
GitHub
  │
  ▼
Jenkins
  │
  ├── Checkout Source Code                  ✅
  │
  ├── Install Dependencies                  ✅
  │
  ├── Unit Testing                          ✅
  │     └── Jest: 3 Tests Passed
  │
  ├── SonarCloud SAST                       ✅
  │     └── Quality Gate: PASSED
  │
  ├── Snyk SCA                              ✅
  │
  ├── Docker Build                          ✅
  │
  ├── Production Image Verification         ✅
  │
  ├── Trivy Container Security Scan         ✅
  │
  ├── Trivy HIGH/CRITICAL Security Gate     ✅
  │
  ├── Application Health Check              ✅
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
  ├── Kubernetes Rollout Verification       ✅
  │
  ├── Kubernetes Service Verification       ✅
  │
  ├── EKS Application Health Check          ✅
  │
  ├── HPA Verification                      ✅
  │
  ├── Prometheus ServiceMonitor              ✅
  │
  ├── Prometheus Metrics Collection         ✅
  │
  ├── Grafana Monitoring                    ✅
  │
  └── OWASP ZAP Baseline DAST               ✅
        │
        ▼
   ZAP Scan Results
        │
        ├── 65 PASS                         ✅
        │
        ├── 2 WARN-NEW                      ⚠️
        │
        └── 0 FAIL-NEW                      ✅
                 │
                 ▼
        Jenkins Security Evaluation
                 │
                 ▼
          Security Evaluation
                 │
        ┌────────┼─────────┐
        │        │         │
        ▼        ▼         ▼
   WARNINGS   FAIL       NO FINDINGS
      │        │             │
      ▼        ▼             ▼
 Review &   Pipeline      Continue
 Accept      FAILURE       Pipeline
 Warnings
      │
      ▼
Continue Pipeline
```

> DAST interpretation: OWASP ZAP completed the baseline scan successfully and reported 65 PASS, 2 WARN-NEW, and 0 FAIL-NEW findings. The two warnings were reviewed and accepted according to the configured security evaluation policy. No FAIL-NEW findings were detected, so the pipeline is permitted to continue.

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
| `08-jenkins-ci-cd-devsecops-pipeline.md` | Jenkins CI/CD and DevSecOps pipeline implementation, including SonarCloud SAST, Snyk SCA, Trivy container security, Amazon ECR publishing, Amazon EKS deployment, Kubernetes verification, HPA, Prometheus monitoring, Grafana visualization, and OWASP ZAP DAST |

---

## Screenshots folder

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

The Phase 8 screenshot directory contains evidence of the implemented CI/CD, DevSecOps, deployment, monitoring, and runtime-security components, including:

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
- OWASP ZAP DAST scan execution
- OWASP ZAP security results
- Jenkins OWASP ZAP security-gate result

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


#### Snyk Software Composition Analysis (SCA) Evidence

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


#### Amazon EKS Deployment Evidence

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


#### OWASP ZAP DAST Evidence

The OWASP ZAP DAST implementation is documented through the following screenshots.

| Screenshot | Evidence |
|---|---|
| `87-owasp-zap-dast-scan.png` | OWASP ZAP Baseline DAST scan execution against the running application. |
| `88-owasp-zap-security-results.png` | OWASP ZAP security results showing **65 PASS**, **2 WARN-NEW**, and **0 FAIL-NEW** findings. |
| `89-owasp-zap-pipeline-result.png` | Jenkins pipeline result showing the initial DAST security evaluation outcome. |
| `90-owasp-zap-controlled-quality-gate.png` | Controlled DAST quality-gate evaluation showing warning findings being reviewed and accepted according to the configured security policy. |
| `91-owasp-zap-pipeline-success.png` | Jenkins pipeline successfully continuing after the reviewed warning findings were accepted. |


### Screenshots Evidence

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


### Amazon EKS Deployment Evidence

#### Manual Amazon EKS Deployment

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


### OWASP ZAP DAST

![owasp-zap-dast-scan](screenshots/08-jenkins-ci-cd-devsecops-pipeline/87-owasp-zap-dast-scan.png)

![owasp-zap-security-results](screenshots/08-jenkins-ci-cd-devsecops-pipeline/88-owasp-zap-security-results.png)

![owasp-zap-pipeline-result](screenshots/08-jenkins-ci-cd-devsecops-pipeline/89-owasp-zap-pipeline-result.png)

![owasp-zap-controlled-quality-gate](screenshots/08-jenkins-ci-cd-devsecops-pipeline/90-owasp-zap-controlled-quality-gate.png)


![owasp-zap-pipeline-success](screenshots/08-jenkins-ci-cd-devsecops-pipeline/91-owasp-zap-pipeline-success.png)

---

## AWS Infrastructure Provisioned

The AWS infrastructure for this project is provisioned and managed using Terraform. It includes:

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

The Jenkins EC2 instance provides the CI/CD automation environment used to build, test, scan, publish, deploy, and dynamically security-test the application.

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
| Dynamic Application Security Testing (DAST) | OWASP ZAP |
| Version Control | Git |
| Repository Hosting | GitHub |

---

## Project Workflow

This project follows an incremental engineering approach in which each phase builds upon the previous phase to deliver a complete end-to-end DevSecOps platform.

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
                 ├──────────────────────┐
                 │                      │
                 ▼                      ▼
        Prometheus / Grafana       OWASP ZAP
        Observability                 DAST
                                        │
                                        ▼
                              Runtime Security
                              Results Evaluation
```

---

## Implementation Phases

| Phase | Objective | Status |
| ----- | --------- | ------ |
| **Application Development** | Develop the Node.js monitoring application and establish the project foundation. | ✅ Completed |
| **Application Refactoring** | Improve application structure, maintainability, and production readiness. | ✅ Completed |
| **Unit Testing** | Validate application functionality through automated testing. | ✅ Completed |
| **Docker Containerization** | Package the application into a portable and reproducible container image. | ✅ Completed |
| **Terraform Infrastructure** | Provision AWS infrastructure using Infrastructure as Code (IaC). | ✅ Completed |
| **Jenkins Server Provisioning** | Deploy a dedicated Jenkins automation server on Amazon EC2. | ✅ Completed |
| **Jenkins Installation & Configuration** | Configure Jenkins and supporting DevOps tools. | ✅ Completed |
| **Jenkins CI/CD & DevSecOps Pipeline** | Automate application testing, security scanning, image publishing, and deployment. | ✅ Completed |
| **Amazon ECR Publishing** | Publish security-validated container images to Amazon ECR. | ✅ Completed |
| **Amazon EKS Deployment** | Deploy validated container images to Amazon EKS manually and through Jenkins automation. | ✅ Completed |
| **Kubernetes Rollout & Service Verification** | Verify application rollout, Pods, Services, LoadBalancer, and application availability. | ✅ Completed |
| **Kubernetes Autoscaling** | Configure and verify Horizontal Pod Autoscaler (HPA) functionality and metrics. | ✅ Completed |
| **Prometheus Monitoring** | Collect application and Kubernetes metrics using Prometheus and ServiceMonitor. | ✅ Completed |
| **Grafana Dashboards** | Visualize application and Kubernetes monitoring data through Grafana. | ✅ Completed |
| **OWASP ZAP DAST** | Perform dynamic security testing against the running application. | ✅ Completed |

---

## Outcome

The project has progressed from source-code development to a running, automated, monitored, and dynamically security-tested Kubernetes application deployed on Amazon EKS.

The implemented solution successfully demonstrates:

- Source-code management through GitHub
- Automated CI/CD orchestration through Jenkins
- Automated unit testing with Jest and Supertest
- Static Application Security Testing (SAST) with SonarCloud
- SonarCloud Quality Gate enforcement
- Software Composition Analysis (SCA) with Snyk
- Container vulnerability scanning with Trivy
- HIGH/CRITICAL vulnerability quality gating before image promotion
- Container image publishing and verification through Amazon ECR
- Manual Amazon EKS deployment validation
- Automated Amazon EKS deployment through Jenkins
- Kubernetes rollout and Service verification
- AWS Load Balancer-based application exposure
- Kubernetes Horizontal Pod Autoscaler (HPA) verification
- Prometheus ServiceMonitor discovery and metrics collection
- Grafana monitoring and visualization
- Application health verification through the deployed environment
- OWASP ZAP Dynamic Application Security Testing (DAST)
- Runtime security scanning against the deployed application
- Automated DAST security-result evaluation through Jenkins
- Review and acceptance of warning-level DAST findings according to the configured security policy

### OWASP ZAP DAST Result

The OWASP ZAP Baseline DAST implementation successfully executed against the running Amazon EKS application.

The scan produced:

```text
65 PASS
2 WARN-NEW
0 FAIL-NEW
```

The DAST scan completed successfully. The two WARN-NEW findings were reviewed and accepted according to the configured security evaluation policy. No FAIL-NEW findings were detected.

Therefore, the configured DAST policy permits the pipeline to continue after the warning findings are reviewed and accepted.

This demonstrates an important DevSecOps capability: the pipeline does not merely execute a security scanner—it evaluates security results against a defined security policy and applies an appropriate response based on the severity and classification of the findings.


### Defense-in-Depth Security Model

The implemented security controls extend across multiple layers of the software delivery lifecycle:

```text
Source Code Security
        │
        ▼
Dependency Security
        │
        ▼
Container Security
        │
        ▼
Release Security Quality Gate
        │
        ▼
Cloud Deployment
        │
        ▼
Runtime Application Security
        │
        ▼
DAST Results Evaluation
```

The addition of OWASP ZAP strengthens the project's defense-in-depth approach by introducing dynamic security testing against the application after deployment.


### Overall DevSecOps Outcome

The completed implementation demonstrates an end-to-end DevSecOps workflow in which application code is tested, analyzed, secured, containerized, verified, published, deployed, monitored, and dynamically security-tested.

The resulting platform integrates:

```text
GitHub
   │
   ▼
Jenkins CI/CD
   │
   ├── Unit Testing
   ├── SonarCloud SAST
   ├── Snyk SCA
   ├── Docker
   ├── Trivy Security Scan
   ├── Security Quality Gate
   └── Amazon ECR
          │
          ▼
      Amazon EKS
          │
          ├── Kubernetes
          ├── Load Balancer
          ├── HPA
          ├── Prometheus
          ├── Grafana
          └── OWASP ZAP DAST
                   │
                   ▼
             Security Results
                   │
                   ▼
          Jenkins Evaluation
```

> This establishes a complete CI/CD and DevSecOps platform covering build, test, secure, package, publish, deploy, verify, monitor, and runtime security testing.

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
- OWASP ZAP

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

The OWASP ZAP DAST milestone has now been implemented. The remaining planned enhancements include:

### Source-Control Security

- Add pull request validation and automated pre-merge checks.
- Add secrets detection and scanning.
- Introduce additional CI/CD security controls.

### CI/CD Automation

- Integrate GitHub Webhooks with Jenkins.
- Automatically trigger Jenkins builds from repository events.
- Evaluate GitHub Actions as an alternative or complementary CI/CD workflow.


### Platform Completion

- Complete the broader end-to-end DevSecOps platform integration.
- Validate the combined source-control security, CI/CD, security-scanning, deployment, observability, and runtime-security workflow.

---

## Project Status

**Current Phase:** Phase 8 – Jenkins CI/CD & DevSecOps Pipeline

**Latest Completed Milestone:** OWASP ZAP Dynamic Application Security Testing (DAST)

### Completed Security Controls

- SonarCloud SAST
- SonarCloud Quality Gate
- Snyk SCA
- Trivy Container Security Scanning
- Trivy HIGH/CRITICAL Security Quality Gate
- OWASP ZAP Dynamic Application Security Testing

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

### Completed Runtime Security Controls

- OWASP ZAP DAST Scan Execution
- Runtime Application Security Testing
- DAST Security Results Generation
- Jenkins DAST Security-Gate Evaluation

### DAST Result Summary

| Metric | Result |
|---|---:|
| **PASS** | **65** |
| **WARN-NEW** | **2** |
| **FAIL-NEW** | **0** |
| **ZAP Scan Status** | **Completed Successfully** |
| **Warning Evaluation** | **Reviewed & Accepted** |
| **Pipeline Behavior** | **Continue Pipeline** |
| **Final Pipeline Result** | **SUCCESS** |

> **DAST interpretation:** OWASP ZAP completed the baseline scan successfully and identified **65 PASS**, **2 WARN-NEW**, and **0 FAIL-NEW** findings. The two warning-level findings were reviewed and accepted according to the configured security policy. Because no `FAIL-NEW` findings were detected, the controlled security-gate logic permits the pipeline to continue, resulting in a **successful Jenkins pipeline**.

---

## Final Project Objective

The objective of this project is to demonstrate how a modern cloud-native application can be developed, secured, containerized, deployed, monitored, and dynamically security-tested through an automated DevSecOps workflow on AWS.

The implemented solution currently demonstrates the core delivery and security lifecycle:

```text
GitHub
   │
   ▼
Jenkins
   │
   ▼
Unit Testing
   │
   ▼
SonarCloud SAST
   │
   ▼
Snyk SCA
   │
   ▼
Docker
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
Kubernetes
   │
   ▼
HPA
   │
   ▼
Prometheus
   │
   ▼
Grafana
   │
   ▼
OWASP ZAP
   │
   ▼
DAST Security Evaluation
```

The project now extends security validation across multiple layers:

```text
Source Code
     │
     ▼
SonarCloud SAST
     │
     ▼
Application Dependencies
     │
     ▼
Snyk SCA
     │
     ▼
Container Image
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
Running Application
     │
     ▼
OWASP ZAP DAST
     │
     ▼
Runtime Security Results
```

> Integrating OWASP ZAP extends the existing security controls beyond source-code, dependency, and container security into dynamic runtime application security testing.

> The resulting platform demonstrates a broader end-to-end DevSecOps lifecycle combining CI/CD automation, security quality gates, container security, cloud-native deployment, autoscaling, observability, and runtime application security testing.

---

## Author

**Jefferson Ohis**

DevOps & Cloud Engineer | AWS Certified Cloud Practitioner

Passionate about building secure, automated, and scalable cloud infrastructure using DevOps and DevSecOps best practices.

- **GitHub:** https://github.com/Jefferson-ohis1
- **LinkedIn:** https://www.linkedin.com/in/jefferson-ohis-oviosu-5a982a168

---
