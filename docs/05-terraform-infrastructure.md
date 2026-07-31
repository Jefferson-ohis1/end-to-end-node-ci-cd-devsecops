# Phase 5 – Provisioning AWS Infrastructure with Terraform

## Objective

Provision the AWS infrastructure required to support the end-to-end DevSecOps pipeline using Terraform.

The infrastructure will be defined as code (Infrastructure as Code) to enable automated provisioning, version control, repeatable deployments, and simplified infrastructure management.

This phase establishes the cloud foundation required for container image storage, Kubernetes orchestration, continuous integration, and future application deployments.

---

## Why Infrastructure as Code?

Provisioning cloud resources manually through the AWS Management Console can become repetitive, error-prone, and difficult to reproduce consistently across environments.

Infrastructure as Code (IaC) addresses these challenges by describing infrastructure using declarative configuration files that can be version-controlled alongside application source code.

Using Terraform provides several advantages:

- Consistent infrastructure provisioning
- Repeatable deployments
- Version-controlled infrastructure
- Reduced manual configuration errors
- Simplified infrastructure maintenance
- Easier collaboration across engineering teams

Terraform will be used throughout this project to provision and manage the AWS infrastructure required by the DevSecOps pipeline.

---

## Why Design Before Implementation?

Before provisioning any AWS resources, it is important to design the target architecture and understand how each component contributes to the overall solution.

Rather than immediately writing Terraform configuration files, the infrastructure should first answer several important engineering questions:

- What are we building?
- Which AWS services are required?
- How do the services interact?
- Which resources should Terraform manage?
- Which components will remain outside AWS?

Answering these questions before implementation produces a clearer architecture, simplifies Terraform development, and reduces unnecessary redesign later in the project.

---

## AWS Architecture Design

### What Are We Building?

The goal of this project is to build a complete end-to-end DevSecOps platform capable of automatically building, securing, deploying, and monitoring a containerized Node.js application.

Once the project is complete, a developer will only need to push code to GitHub for the automated deployment workflow to begin.

---

## Overall Workflow

The following workflow illustrates the complete DevSecOps lifecycle implemented in this project, from source code management through automated security validation, containerization, deployment to Kubernetes, dynamic application security testing, and continuous monitoring.

```text
Developer
    │
    ▼
GitHub Repository
    │
    ▼
Jenkins Pipeline
    │
    ├──────────────► SonarCloud (SAST)
    │
    ├──────────────► Snyk (Software Composition Analysis)
    │
    ▼
Docker Build
    │
    ▼
Trivy Scan (Container Security)
    │
    ▼
Amazon Elastic Container Registry (ECR)
    │
    ▼
Amazon Elastic Kubernetes Service (EKS)
    │
    ▼
Node.js Monitoring Application
    │
    ├──────────────► OWASP ZAP (DAST)
    │
    ├──────────────► Prometheus
    │
    ▼
Grafana Dashboard
```

This workflow demonstrates the complete software delivery lifecycle implemented in this project. Code changes are pushed to GitHub, where Jenkins automatically triggers the CI/CD pipeline. During the build process, SonarCloud performs Static Application Security Testing (SAST) to identify code quality issues and security vulnerabilities, while Snyk analyzes third-party dependencies using Software Composition Analysis (SCA). The application is then containerized using Docker, and Trivy scans the resulting image for operating system and application package vulnerabilities before it is published to Amazon Elastic Container Registry (ECR).

After the container image passes all security checks, it is deployed to an Amazon Elastic Kubernetes Service (EKS) cluster. Once the application is running, OWASP ZAP performs Dynamic Application Security Testing (DAST) against the live deployment to identify runtime security vulnerabilities that cannot be detected through static analysis alone. Finally, Prometheus continuously collects infrastructure and application metrics, while Grafana visualizes those metrics through interactive dashboards, providing real-time observability into the health and performance of the deployed application.

### Why OWASP ZAP Is Placed After Amazon EKS

OWASP ZAP performs Dynamic Application Security Testing (DAST), which requires a running application that is accessible over HTTP or HTTPS. Unlike SonarCloud, Snyk, and Trivy—which analyze the application before deployment—OWASP ZAP interacts with the deployed application to simulate real-world attacks and identify vulnerabilities that are only exposed during runtime.

For this reason, OWASP ZAP is executed only after the application has been successfully deployed to Amazon EKS.

| Pipeline Stage | Security Tool | Primary Purpose |
|----------------|--------------|-----------------|
| Source Code | SonarCloud | Static Application Security Testing (SAST) |
| Dependency Analysis | Snyk | Software Composition Analysis (SCA) |
| Container Image | Trivy | Container vulnerability scanning |
| Running Application | OWASP ZAP | Dynamic Application Security Testing (DAST) |
| Monitoring | Prometheus + Grafana | Metrics collection, visualization, and observability |

This layered approach follows DevSecOps best practices by integrating security throughout the software delivery lifecycle rather than treating it as a final step. Each security tool operates at the stage where it provides the greatest value: SonarCloud analyzes the source code, Snyk evaluates third-party dependencies, Trivy scans the container image before deployment, and OWASP ZAP validates the security of the live application after deployment to Amazon EKS. Continuous monitoring with Prometheus and Grafana then provides ongoing visibility into the application's availability, performance, and operational health.

---

## AWS Services Used

The following AWS services will be provisioned or used throughout this project.

| AWS Service | Purpose |
|-------------|---------|
| IAM | Secure authentication and authorization for Terraform, Jenkins, Amazon EKS, and AWS services |
| Amazon Elastic Container Registry (ECR) | Stores versioned Docker images built by Jenkins |
| Amazon Elastic Kubernetes Service (EKS) | Hosts the containerized Node.js monitoring application |
| Amazon VPC | Provides isolated networking for the Kubernetes cluster |
| Public and Private Subnets | Separate public-facing and internal infrastructure |
| Internet Gateway | Enables internet connectivity |
| Route Tables | Manage network routing |
| Security Groups | Control inbound and outbound network traffic |
| Elastic IP | Supports outbound internet connectivity through a NAT Gateway |
| NAT Gateway | Allows private subnets to access the internet securely |
| Amazon CloudWatch *(optional)* | Provides AWS infrastructure metrics and logs |

Although CloudWatch is available by default for AWS resources, application-level monitoring in this project will primarily be performed using Prometheus and Grafana.

---

## Services Outside AWS

Not every component of the DevSecOps platform resides within AWS.

The following services will be integrated during later phases of the project.

| Service | Location |
|----------|----------|
| GitHub | External |
| Jenkins | Amazon EC2 |
| SonarCloud | Software as a Service (SaaS) |
| Snyk | Software as a Service (SaaS) |
| Docker | Jenkins Server |
| Trivy | Jenkins Server |
| OWASP ZAP | Jenkins Server |
| Prometheus | Kubernetes Cluster |
| Grafana | Kubernetes Cluster |

Terraform will provision only the AWS infrastructure required to support these services.

---

## High-Level Architecture

The completed platform will resemble the following high-level architecture.

```text
                   Developer
                       │
                       ▼
                GitHub Repository
                       │
                       ▼
                Jenkins Server (EC2)
                       │
      ┌────────────────┼────────────────┐
      │                │                │
      ▼                ▼                ▼
 SonarCloud         Snyk          OWASP ZAP
      │                │                │
      └────────────────┼────────────────┘
                       │
                  Docker Build
                       │
                       ▼
                  Trivy Scan
                       │
                       ▼
             Amazon Elastic Container Registry
                       │
                       ▼
             Amazon Elastic Kubernetes Service
                       │
                       ▼
          Node.js Monitoring Application
                       │
            ┌──────────┴──────────┐
            ▼                     ▼
      Prometheus             Grafana
```

This architecture separates responsibilities across source control, continuous integration, security validation, cloud infrastructure, container orchestration, and monitoring.

---

## What Terraform Will Manage

Terraform will provision and manage the AWS infrastructure required by this project.

The resources include:

- AWS provider configuration
- Amazon Elastic Container Registry (ECR)
- Amazon VPC
- Public and private subnets
- Internet Gateway
- Route tables
- Security groups
- IAM roles and policies
- Amazon Elastic Kubernetes Service (EKS)
- Amazon EKS managed node groups
- Terraform outputs

Managing these resources as code ensures that the infrastructure can be recreated consistently, version-controlled, and maintained alongside the application source code.

---

## Deliverables

By the end of the architecture design stage, the following deliverables have been completed:

- Defined the target AWS architecture
- Identified the AWS services required by the platform
- Distinguished AWS-managed resources from externally managed services
- Defined the infrastructure components that Terraform will provision
- Established a roadmap for implementing the cloud infrastructure

---

> **Note:** The remaining sections of this document will be completed incrementally as each Terraform component is designed, implemented, and verified throughout Phase 5.

## Terraform Project Structure

Before writing any Terraform configuration, it is important to organize the infrastructure into logical components.

Rather than placing every AWS resource inside a single Terraform file, the infrastructure will be separated into multiple files based on responsibility. This modular approach improves readability, simplifies maintenance, and allows individual infrastructure components to evolve independently as the project grows.

The `infra/` directory will contain all Terraform configuration files required to provision the AWS infrastructure.

```text
infra/
├── provider.tf
├── variables.tf
├── terraform.tfvars
├── vpc.tf
├── security-groups.tf
├── iam.tf
├── ecr.tf
├── eks.tf
├── outputs.tf
├── versions.tf
└── README.md (optional)
```

Each file has a clearly defined responsibility within the infrastructure.

| Terraform File | Purpose |
|----------------|---------|
| `versions.tf` | Specifies the required Terraform version and AWS provider version. |
| `provider.tf` | Configures the AWS provider, including the target region. |
| `variables.tf` | Defines reusable input variables used throughout the infrastructure. |
| `terraform.tfvars` | Stores environment-specific values assigned to input variables. |
| `vpc.tf` | Creates the Virtual Private Cloud (VPC), subnets, Internet Gateway, NAT Gateway, and routing resources. |
| `security-groups.tf` | Defines network security rules that control inbound and outbound traffic for AWS resources. |
| `iam.tf` | Creates IAM roles, policies, and permissions required by Amazon EKS and other AWS services. |
| `ecr.tf` | Creates the Amazon Elastic Container Registry (ECR) repository used to store Docker images. |
| `eks.tf` | Provisions the Amazon Elastic Kubernetes Service (EKS) cluster and managed worker nodes. |
| `outputs.tf` | Displays useful infrastructure information after deployment, such as the ECR repository URL, VPC ID, and EKS cluster name. |

Organizing the infrastructure into dedicated files provides several advantages:

- Improves readability by separating infrastructure components into logical units.
- Simplifies troubleshooting by isolating configuration changes.
- Encourages code reuse through variables and outputs.
- Makes collaboration easier when multiple engineers work on the same infrastructure.
- Supports future expansion without requiring major refactoring.

This modular structure follows Terraform best practices and establishes a scalable foundation for the remaining infrastructure implementation throughout this project.

---

## AWS Provider Configuration

*This section will be completed in Step 3.*

---

## Amazon Elastic Container Registry (ECR)

*This section will be completed during the ECR provisioning stage.*

---

## Amazon VPC

The Amazon Virtual Private Cloud (VPC) provides an isolated network within AWS where all infrastructure for this project will be deployed. Rather than relying on the default VPC created by AWS, a dedicated VPC is provisioned to provide complete control over IP addressing, network segmentation, routing, and security.

The VPC serves as the networking foundation for the DevSecOps platform and will host all infrastructure components, including the Amazon EKS cluster, worker nodes, load balancers, and supporting networking resources.

### VPC Configuration

The VPC is defined in `infra/vpc.tf` using the following Terraform resource:

```hcl
resource "aws_vpc" "node_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project_name}-vpc"
  }
}
```

The VPC is configured with:

- A CIDR block of `10.0.0.0/16`
- DNS resolution enabled
- DNS hostnames enabled
- Resource tags generated from the project name variable

Enabling DNS support and DNS hostnames is required for services such as Amazon EKS, which rely on internal DNS for communication between Kubernetes components.

---

## Internet Gateway

An Internet Gateway (IGW) is attached to the VPC to enable communication between resources in public subnets and the internet.

Without an Internet Gateway, resources inside the VPC would remain completely isolated and would be unable to receive or initiate internet traffic.

The Internet Gateway is defined as follows:

```
resource "aws_internet_gateway" "node_igw" {
  vpc_id = aws_vpc.node_vpc.id

  tags = {
    Name = "${var.project_name}-igw"
  }
}
```

The Internet Gateway will later be associated with the public route table, allowing internet access for public-facing resources such as load balancers and the NAT Gateway.

---

## Public Subnets

Two public subnets are created across separate Availability Zones to provide high availability and fault tolerance.

| Subnet | CIDR Block | Availability Zone |
|---------|------------|-------------------|
| Public Subnet 1 | `10.0.1.0/24` | `us-east-1a` |
| Public Subnet 2 | `10.0.2.0/24` | `us-east-1b` |

Each public subnet is configured with:

- Automatic public IP assignment
- Association with a different Availability Zone
- Kubernetes public load balancer tag

```hcl
map_public_ip_on_launch = true
```

Automatically assigning public IP addresses allows resources launched within these subnets to communicate directly with the internet once routing is configured.

Each public subnet also includes the Kubernetes tag:

```text
kubernetes.io/role/elb = 1
```

This tag allows Amazon EKS to automatically provision internet-facing Elastic Load Balancers when Kubernetes Services of type `LoadBalancer` are created.

---

## Private Subnets

Two private subnets are also created across separate Availability Zones.

| Subnet | CIDR Block | Availability Zone |
|---------|------------|-------------------|
| Private Subnet 1 | `10.0.3.0/24` | `us-east-1a` |
| Private Subnet 2 | `10.0.4.0/24` | `us-east-1b` |

Unlike the public subnets, the private subnets do not automatically assign public IP addresses to instances.

This design improves security by ensuring that workloads running inside these subnets cannot be accessed directly from the internet.

The Amazon EKS managed worker nodes will later be deployed into these private subnets, following AWS recommended architecture for production Kubernetes clusters.

Each private subnet includes the Kubernetes tag:

```text
kubernetes.io/role/internal-elb = 1
```

This tag enables Amazon EKS to provision internal Elastic Load Balancers for Kubernetes Services that should only be accessible within the VPC.

Private subnets will later access the internet securely through a NAT Gateway, allowing the worker nodes to download container images, retrieve software updates, and communicate with AWS services without exposing them to inbound internet traffic.

---

## Elastic IP

An Elastic IP (EIP) is a static public IPv4 address allocated by AWS.

In this project, the Elastic IP is reserved specifically for the NAT Gateway. Rather than assigning public IP addresses directly to resources running in private subnets, the NAT Gateway uses the Elastic IP to provide outbound internet connectivity on their behalf.

This architecture allows Amazon EKS worker nodes to:

- Pull container images from Amazon Elastic Container Registry (ECR)
- Download operating system updates
- Communicate with AWS services
- Access external package repositories

while remaining inaccessible from the public internet.

The Elastic IP is defined in Terraform as:


```
resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name = "${var.project_name}-nat-eip"
  }
}
```

---

## NAT Gateway

A Network Address Translation (NAT) Gateway enables resources within private subnets to access the internet without exposing them to inbound internet traffic.

In this project, the NAT Gateway is deployed into the first public subnet and is associated with the Elastic IP created earlier. The private subnets will later use this NAT Gateway through their route table, allowing Amazon EKS worker nodes to communicate with external services while remaining isolated from direct internet access.

The NAT Gateway is defined in Terraform as:

```
resource "aws_nat_gateway" "node_nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet_1.id

  depends_on = [
    aws_internet_gateway.node_igw
  ]

  tags = {
    Name = "${var.project_name}-nat-gateway"
  }
}
```

Placing the NAT Gateway in a public subnet allows it to communicate with the Internet Gateway, while private subnets route outbound traffic through it. This design follows AWS networking best practices for production Amazon EKS deployments.


---


## IAM

*This section will be completed during the IAM configuration stage.*

---

## Amazon Elastic Kubernetes Service (EKS)

*This section will be completed during the Kubernetes provisioning stage.*

---

## Verification

*Verification steps and screenshots will be added after the infrastructure has been provisioned.*

---

## Commands Used

*Terraform commands used throughout this phase will be documented as implementation progresses.*

---

## Files Added

*The Terraform configuration files created during this phase will be documented here.*

---

## Results

*This section will summarize the completed AWS infrastructure after all Terraform resources have been provisioned successfully.*

---

## Key Takeaway

Designing the AWS architecture before writing Terraform configuration establishes a clear implementation strategy and reduces unnecessary redesign throughout the infrastructure provisioning process. Defining cloud resources as code also promotes consistency, repeatability, and maintainability across environments.

---

## Next Step

With the VPC, subnets, Internet Gateway, Elastic IP, and NAT Gateway now provisioned, the next step is to configure network routing by creating:

- Public Route Table
- Private Route Table
- Public Route Table Association
- Private Route Table Associations

These routing resources will direct internet traffic from the public subnets through the Internet Gateway while allowing workloads in the private subnets to securely access the internet through the NAT Gateway. Completing the routing configuration finalizes the networking foundation required for Amazon EKS.

---
