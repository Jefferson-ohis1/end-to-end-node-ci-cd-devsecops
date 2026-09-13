# Phase 9 — DevSecOps Governance and Security Hardening

Phase 9 introduces the **repository governance and pre-merge security controls** that complete the DevSecOps lifecycle established throughout the earlier phases of this project.

The phase adds Pull Request validation, secrets detection, Jenkins/GitHub integration, required status checks, branch protection, and controlled separation between pre-merge validation and post-merge deployment.

More importantly, Phase 9 represents the **final governance layer of the project's original implementation roadmap**.

The project was intentionally developed incrementally. Earlier phases established the application, automated testing, containerization, CI/CD pipeline, security scanning, AWS infrastructure, Kubernetes deployment, and observability platform before repository-level governance was introduced.

This sequencing was intentional.

The objective was first to build and validate a functioning end-to-end CI/CD and DevSecOps platform and then introduce governance controls that determine **how changes are allowed to enter that platform**.

---

## 9.0 — Why Phase 9 Was Introduced

### Project Roadmap Context

The original project roadmap was established during **Phase 1 — Project Initialization**.

At that stage, the project was presented as an end-to-end DevSecOps implementation covering the complete lifecycle from application development through automated deployment, security scanning, Kubernetes orchestration, and observability.

The roadmap explicitly identified the intention to document the project incrementally, with each phase introducing another part of the overall DevSecOps lifecycle.

The implementation therefore followed this progression:

```text
Phase 1
Project Foundation
        │
        ▼
Application Development
        │
        ▼
Testing
        │
        ▼
CI/CD
        │
        ▼
Security Scanning
        │
        ▼
Containerization
        │
        ▼
AWS Infrastructure
        │
        ▼
Kubernetes Deployment
        │
        ▼
Observability
        │
        ▼
Phase 9
Governance & Security Hardening
```

Phase 9 was therefore not an unrelated addition to the project.

It was the **governance layer that follows the construction of the core delivery platform**.

---

### Connection to the Phase 1 Roadmap

In the Phase 1 project announcement, the implementation was described as a journey covering:

* Project planning
* Application development
* Automated testing
* CI/CD
* Security scanning
* Containerization
* Kubernetes orchestration
* Observability
* Deployment automation

The Phase 1 also established that the project would be implemented and documented phase by phase rather than presenting only the final architecture.

Therefore phase 9 introduce: 

* Security gates
* Pull Request validation
* Dependency scanning
* Secrets detection
* Container scanning

> PR validation and secrets detection were introduced as final enhancements once the core pipeline was complete.

Phase 9 implements that commitment.

Therefore, the introduction of Pull Request validation and secrets detection in this phase is deliberate rather than accidental.

The project first established the core CI/CD and DevSecOps pipeline and then added the repository governance mechanisms required to control changes entering that pipeline.

---

### Why Governance Was Added After the Core Pipeline

A useful way to understand the project progression is to separate **delivery capability** from **delivery governance**.

Earlier phases primarily answered:

> **"Can the application be built, tested, secured, containerized, deployed, and monitored automatically?"**

Phase 9 answers:

> **"How do we control which changes are allowed to enter that automated delivery process?"**

The distinction is:

```text
Core CI/CD & DevSecOps
        │
        ├── Build
        ├── Test
        ├── SAST
        ├── SCA
        ├── Container Scan
        ├── Container Registry
        ├── Kubernetes Deployment
        ├── DAST
        └── Observability
                │
                ▼
       Existing Delivery Platform
                │
                ▼
        Phase 9 Governance
                │
                ├── Pull Request
                ├── Secrets Detection
                ├── PR Validation
                ├── Status Checks
                ├── Branch Protection
                └── Merge Controls
```

Without the Phase 9 governance layer, the project already had a functional security-aware delivery pipeline, but it did not yet have an equally strong **repository-level control point governing changes before they reached the deployment pipeline**.

Phase 9 closes that gap.

---

### Why Pull Request Validation Belongs Here

Pull Request validation creates a **pre-merge security and quality gate**.

Before Phase 9, the project had security and quality controls inside the broader CI/CD process.

Phase 9 moves selected controls earlier in the software delivery lifecycle.

Instead of waiting for a change to reach the normal deployment pipeline, the repository can now validate a Pull Request before it is merged into `main`.

The resulting principle is:

```text
Developer Change
      │
      ▼
Pull Request
      │
      ▼
Validate Before Merge
      │
      ├── Secrets Detection
      ├── Unit Tests
      ├── SAST
      └── Dependency Security
      │
      ▼
Merge
      │
      ▼
Post-Merge CI/CD
      │
      ├── Container Build
      ├── Container Scan
      ├── ECR
      ├── EKS
      ├── Kubernetes Verification
      └── DAST
```

This creates an important DevSecOps principle:

> **Prevent unsuitable changes from entering the main delivery path rather than discovering every problem only after merge.**

---

### Why Secrets Detection Was Added in Phase 9

Secrets detection was introduced because application security does not end with vulnerability scanning.

A project may have:

* secure dependencies,
* clean source-code analysis,
* secure container images,

and still be compromised if a developer accidentally commits:

* an API key,
* access token,
* password,
* credential,
* private key,
* or another sensitive value.

Gitleaks therefore complements the security controls already established in earlier phases.

The project's security controls can now be viewed as multiple layers:

```text
Source Code
    │
    ├── Jest
    │      └── Application behavior
    │
    ├── SonarCloud
    │      └── Source-code quality/security
    │
    ├── Gitleaks
    │      └── Secrets detection
    │
    ├── Snyk
    │      └── Dependency vulnerabilities
    │
    ├── Trivy
    │      └── Container vulnerabilities
    │
    └── OWASP ZAP
           └── Runtime/web security
```

Phase 9 therefore extends the existing DevSecOps security model rather than replacing the earlier security controls.

---

### Why Branch Protection Was Added

Security scanning by itself does not guarantee that developers cannot merge unvalidated code.

A pipeline can report:

```text
FAIL
```

but repository governance must determine whether that failure actually prevents a merge.

Branch protection connects the validation process to repository policy.

The resulting control becomes:

```text
Pull Request
      │
      ▼
Jenkins Validation
      │
      ▼
Status Check
      │
      ├── PASS ──────► Merge permitted
      │
      └── FAIL ──────► Merge blocked
```

This is the key governance transition introduced by Phase 9:

> **Security and quality checks become repository-level merge requirements rather than merely informational pipeline results.**

---

### Why the Phase 9 Controls Were Not Introduced Earlier

Introducing Pull Request governance at the beginning of the project would have been possible, but it would have provided less value because the project did not yet have the complete validation and deployment workflow that the governance layer was intended to control.

The project was deliberately developed in this order:

```text
Build the Application
        ↓
Test the Application
        ↓
Containerize
        ↓
Build CI/CD
        ↓
Add DevSecOps Scanning
        ↓
Deploy to AWS/EKS
        ↓
Verify the Platform
        ↓
Add Repository Governance
```

This sequencing provides a clearer demonstration of DevOps engineering progression.

The governance layer is therefore being placed **around an already functioning delivery platform**.

This also keeps the implementation easier to understand because each phase introduces a distinct capability before the next layer is added.

---

## 9.0.1 — Phase 9 Engineering Objective

The overall objective of Phase 9 is therefore:

> **To establish a repository governance boundary that validates and secures Pull Requests before they can be merged into `main`, while preserving the existing Phase 8 deployment pipeline for approved changes.**

Phase 9 specifically introduces:

* Pull Request-aware Jenkins execution
* Gitleaks secrets detection
* Jenkins/GitHub integration
* GitHub webhook integration
* Jenkins status reporting
* Required Jenkins status checks
* Pull Request enforcement
* Branch synchronization requirements
* Branch protection
* Protection against bypassing configured requirements
* Terraform plan-file exclusion
* Evidence-backed Pull Request validation

The resulting lifecycle is:

```text
Developer
    │
    ▼
Feature Branch
    │
    ▼
Pull Request
    │
    ▼
Pre-Merge Security & Quality Validation
    │
    ├── Gitleaks
    ├── Jest
    ├── SonarCloud
    └── Snyk
    │
    ▼
Required Jenkins Status
    │
    ▼
Branch Protection
    │
    ▼
Merge to main
    │
    ▼
Existing CI/CD
    │
    ├── Docker
    ├── Trivy
    ├── ECR
    ├── EKS
    ├── Kubernetes Verification
    └── OWASP ZAP
```

---

## 9.0.2 — Relationship Between Phase 8 and Phase 9

Phase 8 established the project's core deployment-oriented DevSecOps platform.

That platform included:

```text
Application
    ↓
Jenkins
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
Prometheus / Grafana
    ↓
OWASP ZAP
```

Phase 9 does not replace this architecture.

Instead, it places a governance boundary in front of it:

```text
                 Phase 9
            Governance Layer
                    │
                    ▼
             Pull Request
                    │
          ┌─────────┴─────────┐
          │                   │
       Validate            Reject
          │                   │
          ▼                   ▼
     Merge to main        Fix Change
          │
          ▼
      Phase 8 CI/CD
```

This means Phase 9 is best understood as a **governance and security-hardening layer around the existing DevSecOps platform**.

---

# 9.1 — GitHub Repository Governance Baseline

## Objective

The objective of this stage was to establish a baseline of the GitHub repository's governance and security configuration before implementing the Phase 9 controls.

The baseline provided a reference point for measuring the governance improvements introduced during this phase.

### Repository Baseline

| Configuration                   | Baseline Status                   |
| ------------------------------- | --------------------------------- |
| Repository                      | `end-to-end-node-ci-cd-devsecops` |
| Default Branch                  | `main`                            |
| Repository Visibility           | Public                            |
| Branch Protection               | Not configured at baseline        |
| Repository Rulesets             | None configured                   |
| GitHub Actions Workflows        | None configured                   |
| GitHub Webhooks                 | None configured at baseline       |
| Security Policy                 | Disabled                          |
| Security Advisories             | Enabled                           |
| Private Vulnerability Reporting | Disabled                          |
| Dependabot Alerts               | Disabled                          |
| Code Scanning                   | Requires setup                    |
| Secret Scanning                 | Enabled                           |

> The table represents the repository governance state before the Phase 9 governance controls were implemented.

### Local Git Baseline

The repository was initially verified using:

```bash
git branch -a
git status
```

Phase 9 implementation was isolated on a dedicated working branch:

```bash
git checkout -b phase9-governance
```

The resulting workflow was:

```text
main
 │
 └── phase9-governance
          │
          ├── Pull Request Validation
          ├── Gitleaks Secrets Detection
          ├── Jenkins/GitHub Integration
          ├── Repository Governance
          └── Branch Protection
```

Using a dedicated branch prevented governance implementation work from being performed directly against the stable `main` branch.

---

# 9.2 — Phase 9 Governance Controls

The following controls were introduced during Phase 9:

* Pull Request-aware Jenkins validation
* Gitleaks secrets detection
* Jenkins/GitHub integration
* GitHub webhook configuration
* Jenkins status reporting
* Required Jenkins status checks
* Pull Request requirement for `main`
* Branch synchronization requirement
* Protection against bypassing configured branch protection requirements
* Terraform plan-file exclusion from Git tracking

The resulting governance model is:

```text
Feature Branch
      │
      ▼
Pull Request
      │
      ▼
Jenkins Validation
      │
      ├── Gitleaks
      ├── Jest
      ├── SonarCloud
      └── Snyk
      │
      ▼
Required Status Check
      │
      ▼
Branch Protection
      │
      ▼
Merge to main
      │
      ▼
Full Jenkins CI/CD
```

These controls directly implement the governance and security-hardening objectives identified for the final stage of the project.

---

# 9.3 — Terraform Plan File Protection

Terraform generated plan files were excluded from Git tracking through the following `.gitignore` rule:

```text
*.tfplan
```

This prevents generated Terraform artifacts such as:

```text
infra/phase9-infrastructure.tfplan
```

from being accidentally committed.

The repository working tree was verified after applying the `.gitignore` change, and the Terraform plan file was no longer reported as an untracked Git file.

This is particularly important because Terraform plan files can contain infrastructure configuration and potentially sensitive deployment information that should not be committed to source control.

---

# 9.4 — Pull Request Validation Pipeline

## Objective

The objective of this stage was to integrate Pull Request validation into the existing Jenkins CI/CD and DevSecOps pipeline.

This stage represents the implementation of the **PR validation commitment identified earlier in the project's public development roadmap**.

The project uses a **single unified `Jenkinsfile`** rather than maintaining a separate Pull Request pipeline definition.

Jenkins determines the build context and executes the stages appropriate to that context.

---

## Unified Jenkinsfile Architecture

The repository uses:

```text
Jenkinsfile
```

as the single pipeline definition.

Pull Request builds are identified using Jenkins Declarative Pipeline:

```groovy
when {
    changeRequest()
}
```

Deployment-oriented stages use the inverse condition:

```groovy
when {
    not {
        changeRequest()
    }
}
```

This creates a controlled boundary between Pull Request validation and post-merge deployment.

---

## Why a Unified Jenkinsfile Was Used

A separate PR pipeline could have been created, but the project intentionally uses a single pipeline definition.

The unified approach provides:

* One source of pipeline truth
* Less duplicated pipeline logic
* Consistent tooling configuration
* Consistent validation behavior
* Explicit separation of PR and deployment execution
* Easier maintenance
* Clear visibility of the complete delivery lifecycle

The architecture is therefore:

```text
                    Jenkinsfile
                        │
                        ▼
                Detect Build Context
                        │
             ┌──────────┴──────────┐
             │                     │
        Pull Request          Normal Build
             │                     │
             ▼                     ▼
       PR Validation          Full CI/CD
```

---

# 9.5 — Pull Request Validation Flow

The Pull Request execution path is:

```text
Pull Request
      │
      ▼
Checkout Source Code
      │
      ▼
Gitleaks Secrets Detection
      │
      ▼
Install Dependencies
      │
      ▼
Dependency Inspection
      │
      ▼
Jest Unit Testing
      │
      ▼
SonarCloud SAST
      │
      ▼
Snyk SCA
      │
      ▼
PR Validation Result
```

Deployment-oriented stages are intentionally excluded from this path.

---

## Pull Request Validation Controls

| Validation Stage                    | Tool / Mechanism | Purpose                                        |
| ----------------------------------- | ---------------- | ---------------------------------------------- |
| Source Checkout                     | Jenkins SCM      | Retrieve Pull Request source                   |
| Secrets Detection                   | Gitleaks         | Detect potential secrets                       |
| Dependency Installation             | npm              | Install dependencies using `package-lock.json` |
| Dependency Inspection               | npm              | Inspect application dependency tree            |
| Unit Testing                        | Jest             | Validate application behavior                  |
| Static Application Security Testing | SonarCloud       | Analyze source-code quality and security       |
| Software Composition Analysis       | Snyk             | Identify dependency vulnerabilities            |

These controls provide a pre-merge validation layer using security and quality tools that were already established elsewhere in the project.

---

# 9.6 — PR-Aware Pipeline Boundary

For Pull Request builds:

```text
changeRequest() = true
```

Therefore:

```text
Pull Request
     │
     ▼
Validation Stages
     │
     ├── Gitleaks
     ├── Jest
     ├── SonarCloud
     └── Snyk
     │
     ▼
Validation Result

Deployment Stages
     │
     ▼
SKIPPED
```

For normal non-Pull Request builds:

```text
changeRequest() = false
```

The existing Phase 8 deployment pipeline remains available:

```text
Validation
    │
    ▼
Docker Build
    │
    ▼
Trivy
    │
    ▼
ECR
    │
    ▼
EKS
    │
    ▼
Kubernetes Verification
    │
    ▼
OWASP ZAP
```

This separation prevents Pull Requests from publishing container images, modifying the EKS environment, or executing deployment-dependent validation before the change has been merged.

---

## Deployment Stages Protected from Pull Requests

The following deployment-oriented stages are protected using the `changeRequest()` boundary:

* Docker Build
* Verify Production Image
* Trivy Container Security Gate
* Application Health Check
* Amazon ECR Container Image Push
* Verify ECR Image
* Configure Amazon EKS Access
* Amazon EKS Deployment
* Kubernetes Rollout Verification
* Kubernetes HPA Verification
* HPA Metrics Verification
* Prometheus ServiceMonitor Verification
* Kubernetes Service Verification
* EKS Application Health Check
* OWASP ZAP Baseline DAST

The protection mechanism is:

```groovy
when {
    not {
        changeRequest()
    }
}
```

This establishes a clear security boundary between:

```text
Pre-Merge Validation
```

and:

```text
Post-Merge Deployment
```

---

# 9.7 — Unified Jenkins Pipeline Architecture

```text
                           GitHub
                              │
                              ▼
                       Feature Branch
                              │
                              ▼
                       Pull Request
                              │
                              ▼
                    Jenkins Multibranch
                              │
                              ▼
                       Unified Jenkinsfile
                              │
                       Detect Build Context
                              │
                ┌─────────────┴─────────────┐
                │                           │
             PR Build                  Normal Build
                │                           │
                ▼                           ▼
         PR Validation                  Full CI/CD
                │                           │
       ┌────────┼────────┐                  ▼
       │        │        │                Docker
       │        │        │                  │
   Gitleaks   Jest   SonarCloud           Trivy
       │        │        │                  │
       │        │        └── Snyk           ECR
       │        │                           │
       └────────┴────────┘                  EKS
                │                           │
                ▼                           ▼
          PR Validation              Kubernetes Checks
             Result                       │
                                         ▼
                                        ZAP
```

---

# 9.8 — Jenkinsfile Implementation

The unified Jenkinsfile incorporates the Phase 9 Pull Request controls into the existing CI/CD pipeline.

The implementation includes:

* Jenkins JDK 21 configuration
* Node.js 24 configuration
* Jenkins SCM checkout
* Pull Request-aware conditions
* `changeRequest()` detection
* npm dependency installation
* Dependency inspection
* Jest testing
* SonarCloud SAST
* Snyk SCA
* Gitleaks secrets detection
* Existing Docker build
* Existing Trivy security gate
* Existing Amazon ECR publishing
* Existing Amazon EKS deployment
* Existing Kubernetes verification
* Existing OWASP ZAP DAST
* Jenkins timestamps for execution traceability

The Phase 8 deployment functionality is preserved while Pull Request execution is isolated from deployment stages.

---

# 9.9 — Jenkins Multibranch Pipeline

The Jenkins Multibranch Pipeline job used for the project is:

```text
nodejs-devsecops-pipeline
```

The Multibranch Pipeline was configured to discover the repository branches and Pull Requests.

The resulting Jenkins structure included:

```text
Branches
├── main
└── phase9-governance
```

The Jenkins Multibranch Pipeline successfully discovered the Pull Request and generated a dedicated Pull Request build workspace.

This was an important verification because the project needed Jenkins to distinguish a Pull Request build from an ordinary branch build before the `changeRequest()` conditions could control the pipeline execution path.

### Jenkins Multibranch Pipeline Evidence

![jenkins-multi-branch-pipeline](../screenshots/09-devsecops-governance-and-security-hardening/01-jenkins-multi-branch-pipeline.png)


---

# 9.10 — GitHub → Jenkins Webhook Integration

## Objective

The objective of this stage was to establish automated communication between GitHub and Jenkins.

The integration provides the event-driven connection required for the repository and Jenkins automation workflow.

The GitHub repository was configured with a Jenkins webhook endpoint:

```text
http://JENKINS-PUBLIC-IP:8080/github-webhook/
```

The webhook allowed GitHub repository events to be delivered to Jenkins for Multibranch Pipeline processing.

---

## Webhook Configuration

| Configuration    | Value                                           |
| ---------------- | ----------------------------------------------- |
| Payload URL      | `http://JENKINS-PUBLIC-IP:8080/github-webhook/` |
| Content Type     | `application/json`                              |
| Secret           | Not configured                                  |
| SSL Verification | Disabled                                        |
| Event            | Push                                            |
| Active           | Enabled                                         |

SSL verification was disabled because the Jenkins endpoint used during this project was exposed through HTTP rather than HTTPS.

> This configuration was appropriate for the temporary project environment. A production Jenkins deployment should use HTTPS and an authenticated webhook configuration.

The webhook configuration should therefore be understood as a **project-lab implementation**, not as a recommendation for a production internet-facing Jenkins deployment.

---

## Webhook Verification

GitHub successfully delivered the configured push webhook event.

The GitHub Webhooks interface reported:

```text
Last delivery was successful.
```

### Webhook Evidence

![github-webhook](../screenshots/09-devsecops-governance-and-security-hardening/02-github-webhook.png)

The successful delivery verified the GitHub-to-Jenkins communication path used by the project.

---

# 9.11 — Jenkins GitHub Status Reporting

Jenkins published the following GitHub status check:

```text
continuous-integration/jenkins/branch
```

A successful verification produced:

```text
continuous-integration/jenkins/branch

This commit looks good
```

This status was subsequently used as a required status check for the protected `main` branch.

This is an important transition from **pipeline execution** to **repository governance**:

```text
Jenkins Pipeline
       │
       ▼
Validation Result
       │
       ▼
GitHub Status
       │
       ▼
Branch Protection
       │
       ▼
Merge Decision
```

The Jenkins result therefore became part of the repository's merge-control mechanism.

---

# 9.12 — SonarCloud Status Reporting

The repository also reported the SonarCloud validation result:

```text
SonarCloud Code Analysis
```

The verified result was:

```text
Successful
Quality Gate passed
```

GitHub displayed the two successful checks together:

```text
2 / 2

SonarCloud Code Analysis
Successful — Quality Gate passed

continuous-integration/jenkins/branch
This commit looks good
```

### GitHub Commit Verification Evidence

![github-commit-verification](../screenshots/09-devsecops-governance-and-security-hardening/03-github-commit-verification.png)

This demonstrates that both the existing source-code quality/security validation and Jenkins pipeline status were successfully reported to GitHub.

---

# 9.13 — Secrets Detection with Gitleaks

## Objective

The objective of this stage was to introduce automated secrets detection into the Pull Request validation process.

This stage directly implements the **secrets-detection enhancement identified in the project's earlier roadmap**.

The security control uses **Gitleaks** to detect potential:

* Credentials
* Access tokens
* API keys
* Passwords
* Other sensitive values

before source changes are merged.

---

## Why Gitleaks Was Added

Other security controls in the project address different layers of the application:

```text
SonarCloud
    → Source-code analysis

Snyk
    → Dependency vulnerabilities

Trivy
    → Container vulnerabilities

OWASP ZAP
    → Web/application runtime security
```

Gitleaks addresses a different risk:

```text
Gitleaks
    → Accidental exposure of secrets
```

This makes Gitleaks complementary to the existing DevSecOps controls.

The objective is not to claim that Gitleaks can guarantee that a repository contains no secrets.

Instead, it provides an automated detection gate for recognizable secret patterns and credential-like material.

---

## Gitleaks Selection

Gitleaks was selected because it:

* Is specifically designed for secrets detection
* Supports CI/CD integration
* Provides configurable exit-code behavior
* Can run as a Docker container
* Supports version pinning
* Provides reproducible execution across environments

The project uses the pinned Docker image:

```text
zricethezav/gitleaks:v8.28.0
```

Pinning the image version provides deterministic tool behavior and prevents the pipeline from unexpectedly using a different Gitleaks release.

---

### Gitleaks Docker Image Verification

The image was retrieved and executed using:

```bash
docker run --rm \
  zricethezav/gitleaks:v8.28.0 \
  help
```

> This verified that the pinned image could be successfully retrieved and executed.

---

## Docker-Based Execution

Gitleaks is executed through Docker rather than requiring a permanent Gitleaks installation on the Jenkins host.

The execution model is:

```text
Jenkins
   │
   ▼
Docker
   │
   ▼
Gitleaks v8.28.0
   │
   ▼
Repository Workspace
   │
   ▼
Secrets Detection Result
```

This provides:

* Tool isolation
* Version consistency
* Reproducible execution
* Reduced Jenkins host dependency
* Consistent execution between local validation and Jenkins

---

## Git Bash Path Conversion

Because development was performed from Git Bash on Windows, the Docker volume mount initially encountered an MSYS path-conversion issue.

The corrected execution uses:

```text
MSYS_NO_PATHCONV=1
```

The validated command was:

```bash
MSYS_NO_PATHCONV=1 docker run --rm \
  -v "$(pwd):/repo:ro" \
  zricethezav/gitleaks:v8.28.0 \
  dir /repo \
  --redact \
  --exit-code 1
```

The environment variable prevents Git Bash from modifying the `/repo` container path.

This was an environment-specific implementation detail that was validated during the Phase 9 development process.

---

## Repository Scan

The repository was scanned using:

```bash
MSYS_NO_PATHCONV=1 docker run --rm \
  -v "$(pwd):/repo:ro" \
  zricethezav/gitleaks:v8.28.0 \
  dir /repo \
  --redact \
  --exit-code 1
```

The scan completed successfully and reported:

```text
no leaks found
```

Approximately:

```text
800625 bytes
```

were processed and the command returned exit code:

```text
0
```

The resulting security gate was:

```text
Repository
    ↓
Gitleaks v8.28.0
    ↓
No detectable secrets
    ↓
Exit code 0
    ↓
PASS
```

---

## `--redact` Configuration

The scan uses:

```text
--redact
```

This reduces the risk of exposing detected secret values in command output or Jenkins logs.

The intended behavior is:

```text
Secret detected
      │
      ▼
Gitleaks finding
      │
      ▼
Secret value redacted
      │
      ▼
Exit code 1
      │
      ▼
Security stage fails
```

---

## Exit-Code Security Gate

The scan uses:

```text
--exit-code 1
```

The expected behavior is:

| Gitleaks Result   | Exit Code | Pipeline Result |
| ----------------- | --------: | --------------- |
| No leaks detected |       `0` | PASS            |
| Leak detected     |       `1` | FAIL            |

This makes Gitleaks suitable for automated Jenkins security gating.

---

## Controlled Positive Detection Test

A controlled synthetic credential-like value was used to verify positive detection behavior without exposing a real credential.

The test value was:

```text
awsToken=AKIALALEMEL33243OLIA
```

The temporary test file was scanned using:

```bash
docker run --rm \
  -i \
  zricethezav/gitleaks:v8.28.0 \
  stdin \
  --redact \
  --exit-code 1 < gitleaks-test-secret.txt
```

The scan successfully detected the synthetic secret and returned:

```text
WRN leaks found: 1
```

with exit code:

```text
1
```

The verification therefore demonstrated:

```text
Synthetic Secret
      │
      ▼
Gitleaks v8.28.0
      │
      ▼
Secret Detected
      │
      ▼
Exit Code 1
      │
      ▼
Security Gate FAIL
```

The temporary test file was removed immediately after testing and the synthetic value was not committed to the repository.

This positive test is important because a clean scan alone demonstrates only:

```text
"No secret was detected in this scan."
```

The controlled positive test additionally demonstrates:

```text
"The security gate fails when Gitleaks detects a secret."
```

That verifies the intended gate behavior rather than merely verifying that the tool executes successfully.

---

## Gitleaks Jenkins Integration

The unified Jenkinsfile contains the Gitleaks validation stage for Pull Request builds.

The stage uses the pinned image:

```text
zricethezav/gitleaks:v8.28.0
```

and the same core scanning controls validated locally:

```text
dir /repo
--redact
--exit-code 1
```

The execution boundary is:

```groovy
when {
    changeRequest()
}
```

Therefore, Gitleaks is part of the Pull Request security validation path rather than the deployment path.

---

### Pull Request Security Flow

```text
Pull Request
      │
      ▼
Checkout Source
      │
      ▼
Gitleaks
      │
      ▼
Secrets Detected?
   ┌──┴──┐
  YES    NO
   │      │
   ▼      ▼
Exit 1   Exit 0
   │      │
   ▼      ▼
 FAIL    PASS
   │      │
   ▼      ▼
Stop    Continue
Validation
```

---

## Security Control Scope

The current Gitleaks implementation scans the checked-out repository workspace.

This provides protection against detectable secrets present in the source tree being validated.

Historical secrets that were previously committed and subsequently removed may require separate historical repository scanning and remediation.

Therefore, this Phase 9 control should be understood as a:

> **Current-workspace secrets detection gate**

rather than a claim of complete historical secret remediation.

---

# 9.14 — Branch Protection and Required Checks

## Objective

The objective of this stage was to enforce repository governance controls on the `main` branch.

Branch protection was configured after the Jenkins status check had been verified.

This ordering was intentional:

```text
Jenkins Validation
       │
       ▼
Verify Status Reporting
       │
       ▼
Configure Branch Protection
       │
       ▼
Make Jenkins Status Required
```

The project therefore did not make an unverified Jenkins status check a merge requirement.

---

## Branch Protection Rule

A branch protection rule was created for:

```text
main
```

The rule requires:

* Pull Request before merging
* Required status checks
* Branches to be up to date before merging
* No bypass of the configured protection requirements

---

## Required Jenkins Status Check

The following Jenkins status check was configured as a required status check:

```text
continuous-integration/jenkins/branch
```

The verified successful result was:

```text
continuous-integration/jenkins/branch
This commit looks good
```

The GitHub branch protection configuration therefore uses Jenkins validation as a merge requirement.

---

## Pull Request Requirement

The `main` branch requires:

```text
Pull Request before merging
```

This prevents changes from being merged directly without passing through the Pull Request workflow.

This establishes the repository governance boundary:

```text
Developer Change
      │
      ▼
Feature Branch
      │
      ▼
Pull Request
      │
      ▼
Validation
      │
      ▼
Merge
```

rather than:

```text
Developer Change
      │
      ▼
Direct main modification
```

---

## Branch Synchronization Requirement

The branch protection configuration also requires:

```text
Require branches to be up to date before merging
```

This ensures that the Pull Request branch is synchronized with the current protected branch before merging.

The purpose is to reduce the possibility of merging a Pull Request that was validated against an outdated version of `main`.

---

## Bypass Protection

The configuration was set so that the configured protection requirements cannot simply be bypassed.

The following setting was enabled:

```text
Do not allow bypassing the above settings
```

This strengthens the governance model by ensuring that the configured requirements apply to the normal repository workflow.

---

## Review Approval Configuration

Required approving reviews were **not enabled** in the Phase 9 configuration.

Therefore, the implemented governance model requires:

```text
Pull Request
    +
Required Jenkins status check
    +
Branch up to date
    +
Configured protection requirements
```

but does not currently require a minimum number of approving reviewers.

This distinction is intentionally documented so that the repository documentation reflects the actual GitHub configuration rather than implying that reviewer approval was implemented when it was not.

---

## Branch Protection Evidence

![branch-protection-rule](../screenshots/09-devsecops-governance-and-security-hardening/04-branch-protection-rule.png)


> This demonstrates that the `main` branch was configured to require Pull Requests and the configured Jenkins status check.

---

# 9.15 — Actual Pull Request Validation

The final Phase 9 verification was performed using an actual GitHub Pull Request.

This was the most important integration test of the phase because it validated the complete governance path rather than testing each component in isolation.

The Pull Request workflow verified the integration between:

* GitHub
* Jenkins Multibranch Pipeline
* Unified Jenkinsfile
* `changeRequest()` detection
* Gitleaks
* Jest
* SonarCloud
* Snyk
* GitHub status reporting
* Branch protection
* Pull Request merge

The workflow was:

```text
phase9-governance
       │
       ▼
Pull Request
       │
       ▼
GitHub Pull Request Event
       │
       ▼
Jenkins Multibranch Discovery
       │
       ▼
PR Build
       │
       ▼
changeRequest() = true
       │
       ▼
PR Validation
       │
       ├── Gitleaks
       ├── npm
       ├── Dependency Inspection
       ├── Jest
       ├── SonarCloud
       └── Snyk
       │
       ▼
Validation Successful
       │
       ▼
GitHub Status
       │
       ▼
Branch Protection Requirements Satisfied
       │
       ▼
Pull Request Ready to Merge
       │
       ▼
Merge to main
```

The Jenkins Pull Request build successfully executed the PR validation path.

Deployment-oriented stages remained outside the Pull Request execution path.

---

## Why the Actual Pull Request Test Was Important

The project did not consider Phase 9 complete merely because the Jenkinsfile contained:

```groovy
changeRequest()
```

or because a GitHub branch protection rule existed.

The complete control chain needed to be tested:

```text
GitHub
   ↓
Pull Request
   ↓
Jenkins Discovery
   ↓
PR-aware Jenkins Build
   ↓
Security & Quality Validation
   ↓
GitHub Status
   ↓
Branch Protection
   ↓
Merge
```

The successful Pull Request therefore served as the end-to-end verification that the governance architecture worked as intended.

---

# 9.16 — Pull Request Evidence

The following evidence was captured during the actual Pull Request lifecycle:

## Github Pull Request Validation

![github-pull-request-validation](../screenshots/09-devsecops-governance-and-security-hardening/05-github-pull-request-validation.png)


> The GitHub evidence demonstrates the Pull Request lifecycle and successful validation status.

---

## GitHub PR Ready To Merge

![github-pr-ready-to-merge](../screenshots/09-devsecops-governance-and-security-hardening/06-github-pr-ready-to-merge.png)


---

## GitHub PR Merged

The Pull Request was subsequently merged into:

```text
main
```

The resulting state of the `main` branch was also verified.


![github-pr-1-merged](../screenshots/09-devsecops-governance-and-security-hardening/07-github-pr-1-merged.png)

> This completes the end-to-end Pull Request governance test.

---

## GitHub phase9-goverance branch Merged With Main

![github-main-merged-phase9](../screenshots/09-devsecops-governance-and-security-hardening/08-github-main-merged-phase9.png)

---

## Jenkins PR Validation Build #1 Stage View

![09-jenkins-pr-validation-stage-view](../screenshots/09-devsecops-governance-and-security-hardening/09-jenkins-pr-validation-stage-view.png)

> These screenshots provide evidence that Jenkins discovered and executed the Pull Request validation pipeline successfully.

## Jenkins PR Validation Build #2 Stage View

![jenkins-pr-validation-build-2-stage-view](../screenshots/09-devsecops-governance-and-security-hardening/10-jenkins-pr-validation-build-2-stage-view.png)

> These screenshots provide evidence that Jenkins discovered and executed the Pull Request validation pipeline successfully.

## Jenkins PR Validation Build #2 Success

![jenkins-pr-validation-build-2-success](../screenshots/09-devsecops-governance-and-security-hardening/11-jenkins-pr-validation-build-2-success.png)


These screenshots collectively document:

* Pull Request creation
* `phase9-governance` → `main`
* Jenkins Pull Request discovery
* Jenkins PR validation
* Validation stage execution
* Successful Jenkins PR build
* GitHub PR validation result
* Pull Request readiness to merge
* Pull Request merge
* Resulting changes appearing on `main`

---

# 9.17 — Phase 9 Verification Summary

| Governance / Security Control                 | Status      |
| --------------------------------------------- | ----------- |
| Dedicated `phase9-governance` branch          | ✅           |
| Unified Jenkinsfile architecture              | ✅           |
| Pull Request-aware `changeRequest()` logic    | ✅           |
| Deployment stages protected from PR execution | ✅           |
| Gitleaks selected                             | ✅           |
| Gitleaks Docker image pinned                  | ✅           |
| Local Gitleaks clean scan                     | ✅           |
| Controlled Gitleaks detection test            | ✅           |
| Gitleaks integrated into unified Jenkinsfile  | ✅           |
| Jenkins Multibranch Pipeline configured       | ✅           |
| Jenkins `main` pipeline verified              | ✅           |
| Jenkins GitHub status check verified          | ✅           |
| SonarCloud status check verified              | ✅           |
| GitHub webhook configured                     | ✅           |
| GitHub push webhook delivery verified         | ✅           |
| `main` Pull Request requirement               | ✅           |
| Required Jenkins status check configured      | ✅           |
| Branch up-to-date requirement                 | ✅           |
| Branch protection bypass restriction          | ✅           |
| Required review approval                      | Not enabled |
| Terraform `*.tfplan` files ignored            | ✅           |
| Actual GitHub Pull Request created            | ✅           |
| Jenkins Pull Request build triggered          | ✅           |
| PR validation stages executed                 | ✅           |
| Deployment stages excluded from PR execution  | ✅           |
| PR validation status reported to GitHub       | ✅           |
| PR evidence screenshots captured              | ✅           |
| Pull Request merged into `main`               | ✅           |
| Final Phase 9 documentation prepared          | ✅           |

---

# 9.18 — Phase 9 Governance Architecture

The completed Phase 9 governance architecture is:

```text
                         GitHub Repository
                                │
                                ▼
                         Feature Branch
                                │
                                ▼
                         Pull Request
                                │
                                ▼
                      GitHub Event / Webhook
                                │
                                ▼
                       Jenkins Multibranch
                                │
                                ▼
                       Unified Jenkinsfile
                                │
                         Detect Build Context
                                │
                 ┌──────────────┴──────────────┐
                 │                             │
             PR Build                    Normal Build
                 │                             │
                 ▼                             ▼
          PR Validation                   Full CI/CD
                 │                             │
       ┌─────────┼─────────┐                   │
       │         │         │                   │
   Gitleaks     Jest   SonarCloud              │
       │         │         │                   │
       └─────────┼─────────┘                   │
                 │                             │
                Snyk                           │
                 │                             │
                 ▼                             ▼
          PR Validation                    Docker
             Result                           │
                 │                          Trivy
                 ▼                             │
       Required Jenkins                       ECR
          Status Check                        │
                 │                            EKS
                 ▼                             │
       Branch Protection                      ▼
                 │                     Kubernetes Verification
                 ▼                             │
       Pull Request Merge                     ▼
                 │                           ZAP
                 ▼
              main
```

---

# 9.19 — Security and Governance Boundary

Phase 9 establishes a clear separation between **pre-merge validation** and **post-merge deployment**.

## Pre-Merge Validation

```text
Pull Request
     │
     ├── Gitleaks
     ├── Jest
     ├── SonarCloud
     └── Snyk
     │
     ▼
Jenkins Validation
     │
     ▼
GitHub Status
     │
     ▼
Branch Protection
```

## Post-Merge Deployment

```text
main
 │
 ▼
Jenkins CI/CD
 │
 ├── Docker
 ├── Trivy
 ├── ECR
 ├── EKS
 ├── Kubernetes Verification
 └── OWASP ZAP
```

This architecture prevents Pull Requests from directly triggering deployment-oriented activities before the change has passed through the repository governance process.

---

# 9.20 — How Phase 9 Completes the DevSecOps Lifecycle

Before Phase 9, the project had already implemented multiple security and quality controls.

However, those controls primarily focused on validating the application and its deployment artifacts.

Phase 9 extends security into the **change-management layer**.

The complete security model can now be represented as:

```text
                 Developer Change
                        │
                        ▼
                  Pull Request
                        │
          ┌─────────────┼─────────────┐
          │             │             │
      Gitleaks        Jest       SonarCloud
          │             │             │
          └─────────────┼─────────────┘
                        │
                       Snyk
                        │
                        ▼
                 Jenkins Validation
                        │
                        ▼
                 GitHub Status Check
                        │
                        ▼
                 Branch Protection
                        │
                        ▼
                    Merge
                        │
                        ▼
                      main
                        │
                        ▼
                  Full CI/CD
                        │
          ┌─────────────┼─────────────┐
          │             │             │
        Docker        Trivy          ECR
          │             │             │
          └─────────────┼─────────────┘
                        │
                       EKS
                        │
                        ▼
               Kubernetes Verification
                        │
                        ▼
                  OWASP ZAP
```

This represents the project's progression from **application security** to **delivery governance**.

---

# 9.21 — Phase 9 Engineering Lessons

Phase 9 demonstrates several important DevOps and DevSecOps engineering principles.

### 1. Security Should Be Integrated Into the Development Lifecycle

Security is more effective when validation occurs before code reaches deployment.

```text
Developer
   ↓
Pull Request
   ↓
Security Validation
   ↓
Merge
   ↓
Deployment
```

---

### 2. Security Tools Should Have Enforcement Mechanisms

A security tool reporting a finding is useful.

A security tool whose failure can prevent an unsafe change from being merged is significantly more valuable.

Phase 9 connects:

```text
Security Tool
      ↓
Jenkins
      ↓
GitHub Status
      ↓
Branch Protection
      ↓
Merge Decision
```

---

### 3. Different Security Controls Address Different Risks

No single security tool provides complete application security.

The project therefore uses multiple controls:

```text
Gitleaks
    → Secrets

SonarCloud
    → Source Code

Snyk
    → Dependencies

Trivy
    → Container

OWASP ZAP
    → Web Application
```

Phase 9 adds governance around these controls.

---

### 4. Build Context Matters

A Pull Request should not automatically behave like a production deployment.

The unified Jenkinsfile therefore distinguishes:

```text
changeRequest() = true
```

from:

```text
changeRequest() = false
```

This prevents deployment-oriented stages from running prematurely.

---

### 5. Governance Should Protect the Stable Branch

The `main` branch represents the stable project state.

Branch protection therefore provides a controlled path:

```text
Feature Branch
      ↓
Pull Request
      ↓
Validation
      ↓
Required Status
      ↓
Merge
```

---

### 6. Evidence Is Part of Engineering Verification

Phase 9 was not considered complete solely because configuration was entered into Jenkins or GitHub.

The controls were:

```text
Implemented
    ↓
Verified
    ↓
Evidence Captured
    ↓
Documented
    ↓
Committed
    ↓
Pushed
```

The actual Pull Request provided the final end-to-end verification.

---

# 9.22 — Phase 9 Completion Criteria

Phase 9 has satisfied its defined completion criteria.

| Completion Criterion                                | Status |
| --------------------------------------------------- | ------ |
| Governance baseline documented                      | ✅      |
| Reason for Phase 9 documented                       | ✅      |
| Relationship to original project roadmap documented | ✅      |
| PR validation objective documented                  | ✅      |
| Unified Jenkinsfile implemented                     | ✅      |
| PR-aware execution logic implemented                | ✅      |
| Deployment stages protected from PR execution       | ✅      |
| Gitleaks locally validated                          | ✅      |
| Gitleaks positive detection behavior validated      | ✅      |
| Gitleaks integrated into Jenkins                    | ✅      |
| Jenkins Multibranch Pipeline verified               | ✅      |
| Jenkins status check verified                       | ✅      |
| SonarCloud status check verified                    | ✅      |
| GitHub webhook configured                           | ✅      |
| Push webhook delivery verified                      | ✅      |
| `main` branch protection configured                 | ✅      |
| Required Jenkins status check configured            | ✅      |
| Actual GitHub Pull Request created                  | ✅      |
| Jenkins Pull Request build triggered                | ✅      |
| PR validation stages executed                       | ✅      |
| Deployment stages excluded from PR execution        | ✅      |
| PR validation status reported to GitHub             | ✅      |
| PR evidence screenshots captured                    | ✅      |
| Pull Request merged into `main`                     | ✅      |
| Final Phase 9 documentation completed               | ✅      |

---

# 9.23 — AWS Infrastructure Lifecycle

The AWS infrastructure used by the project was intentionally retained during Phase 9 implementation and evidence collection because several controls depended on the live Jenkins/AWS environment.

The environment included resources such as:

```text
Jenkins EC2
EKS Cluster
EKS Worker Nodes
Application LoadBalancer / LoadBalancer Resources
ECR Repository
VPC
Subnets
Internet Gateway
Security Groups
IAM Roles and Policies
Associated AWS Resources
```

The infrastructure was retained until the required Phase 9 implementation and evidence collection had been completed.

After:

* Jenkins Multibranch Pipeline verification
* GitHub webhook verification
* Gitleaks validation
* Branch protection verification
* Actual Pull Request validation
* Successful Pull Request merge
* Screenshot evidence collection
* Phase 9 documentation completion

the AWS infrastructure was destroyed.

This completed the intended temporary infrastructure lifecycle:

```text
Provision AWS Infrastructure
          │
          ▼
Phase 8 Deployment Platform
          │
          ▼
Phase 9 Governance Implementation
          │
          ▼
Live Evidence Collection
          │
          ▼
Pull Request Validation
          │
          ▼
Documentation
          │
          ▼
Terraform Destroy
          │
          ▼
AWS Infrastructure Removed
```

> The destruction of the AWS environment does not invalidate the Phase 9 repository governance controls. GitHub repository configuration, branch protection, Pull Request history, commits, and captured evidence remain part of the project record.

The AWS environment was temporary infrastructure used to demonstrate the implementation. Its destruction therefore represents the end of the temporary infrastructure lifecycle rather than the removal of the project's source-code governance architecture.

---

# 9.24 — Phase 9 Governance Outcome

Phase 9 establishes the repository governance foundation required to control changes entering the production-oriented CI/CD workflow.

```text
Pull Request
     │
     ▼
Jenkins PR Validation
     │
     ├── Gitleaks
     ├── npm / dependency validation
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
```

The resulting architecture separates:

```text
Pull Request Security & Quality
```

from:

```text
Post-Merge Application Deployment
```

while using Jenkins as the central validation and CI/CD engine.

This means the project now demonstrates both:

1. **delivery automation**, and
2. **governance of changes entering the delivery workflow**.

The distinction is important.

Phase 8 demonstrated how the application could be built, secured, containerized, deployed, monitored, and tested through Jenkins.

Phase 9 demonstrated how changes to the repository can be subjected to automated validation and governance before they are allowed into the protected `main` branch.

The implemented controls provide:

* Secrets detection through Gitleaks
* Source-code analysis through SonarCloud
* Dependency security through Snyk
* Automated unit testing through Jest
* Jenkins status reporting to GitHub
* GitHub-to-Jenkins webhook integration
* Pull Request enforcement
* Required Jenkins status checks
* Branch synchronization enforcement
* Protection against bypassing configured branch rules
* Controlled separation between validation and deployment
* Evidence-backed Pull Request validation
* Protected `main` branch governance
* Terraform plan-file protection

Most importantly, Phase 9 completes the progression established by the project's original roadmap.

The project moved from:

```text
Building the Delivery Platform
```

to:

```text
Governing Changes Entering the Delivery Platform
```

This distinction is central to the purpose of the phase.

---

# 9.25 — Final Project Evolution

The project's overall progression can now be represented as:

```text
Phase 1
Project Initialization
        │
        ▼
Establish Repository & Development Foundation
        │
        ▼
Application Development
        │
        ▼
Automated Testing
        │
        ▼
Jenkins CI/CD
        │
        ▼
DevSecOps Security Scanning
        │
        ├── SonarCloud
        ├── Snyk
        └── Trivy
        │
        ▼
Containerization
        │
        ▼
AWS Infrastructure
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
Prometheus / Grafana
        │
        ▼
OWASP ZAP
        │
        ▼
Phase 9
DevSecOps Governance
        │
        ├── Pull Requests
        ├── PR Validation
        ├── Gitleaks
        ├── GitHub/Jenkins Integration
        ├── Required Status Checks
        └── Branch Protection
        │
        ▼
Governed CI/CD Lifecycle
```

The project therefore demonstrates both sides of modern DevOps:

```text
Delivery Automation
        +
Delivery Governance
```

---

# 9.26 — Final Phase 9 Architecture

The completed project governance model can be summarized as:

```text
Developer Change
       │
       ▼
Feature Branch
       │
       ▼
GitHub Pull Request
       │
       ▼
GitHub Event
       │
       ▼
Jenkins Multibranch Pipeline
       │
       ▼
Unified Jenkinsfile
       │
       ▼
Detect changeRequest()
       │
       ├─────────────────────────────┐
       │                             │
       ▼                             ▼
    PR Build                    Main / Normal Build
       │                             │
       ▼                             ▼
   Gitleaks                        Docker
       │                             │
       ▼                           Trivy
     Jest                            │
       │                             ▼
       ▼                            ECR
 SonarCloud                          │
       │                             ▼
       ▼                            EKS
     Snyk                            │
       │                             ▼
       ▼                     Kubernetes Verification
Validation Result                     │
       │                             ▼
       ▼                           OWASP ZAP
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

Phase 9 therefore establishes a complete **DevSecOps governance gate** between developer changes and the deployment-oriented CI/CD workflow.

---

# 9.27 — Final Security Model

The final security model of the project can be summarized as:

```text
                    ┌─────────────────────┐
                    │   Developer Change  │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │    Pull Request     │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │ Jenkins Validation  │
                    └──────────┬──────────┘
                               │
              ┌────────────────┼────────────────┐
              │                │                │
              ▼                ▼                ▼
          Gitleaks           Jest          SonarCloud
              │                │                │
              └────────────────┼────────────────┘
                               │
                               ▼
                             Snyk
                               │
                               ▼
                    ┌─────────────────────┐
                    │   GitHub Status     │
                    └──────────┬──────────┘
                               │
                               ▼
                    ┌─────────────────────┐
                    │  Branch Protection  │
                    └──────────┬──────────┘
                               │
                               ▼
                         Merge to main
                               │
                               ▼
                    ┌─────────────────────┐
                    │    Full CI/CD       │
                    └──────────┬──────────┘
                               │
              ┌────────────────┼────────────────┐
              │                │                │
              ▼                ▼                ▼
            Docker           Trivy             ECR
                                                 │
                                                 ▼
                                                EKS
                                                 │
                                                 ▼
                                      Kubernetes Verification
                                                 │
                                                 ▼
                                           OWASP ZAP
```

This represents the final DevSecOps lifecycle demonstrated by the project.

---

# 9.28 — Phase 9 Final Status

```text
PHASE 9 — COMPLETED
```

Phase 9 completed the governance and security-hardening layer of the project.

The phase was intentionally introduced after the core CI/CD and DevSecOps platform had been implemented and validated, consistent with the incremental project roadmap established during Phase 1.

The final implementation demonstrates:

```text
Build
  ↓
Test
  ↓
Secure
  ↓
Containerize
  ↓
Deploy
  ↓
Monitor
  ↓
Govern
  ↓
Control Future Changes
```

All planned Phase 9 implementation controls were implemented, verified, evidenced, documented, and integrated into the repository workflow.

The AWS infrastructure used to perform the live validation was subsequently destroyed after evidence collection was completed.

The project now demonstrates not only **how to automate software delivery**, but also **how to govern and secure the changes entering that delivery process**.

That completes Phase 9 — **DevSecOps Governance and Security Hardening**.

---

# 9.29 — Phase 9 → Phase 10 Transition

Phase 9 completes the **repository governance and security-hardening layer** that was intentionally added after the core Jenkins-based CI/CD and DevSecOps workflow had been established and validated.

The project has now progressed through the following engineering layers:

```text
Application

    ↓

Testing

    ↓

CI/CD Automation

    ↓

Static Analysis & Dependency Security

    ↓

Containerization

    ↓

Container Security

    ↓

Amazon ECR

    ↓

Amazon EKS

    ↓

Runtime Security & Observability

    ↓

Repository Governance

    ↓

Pull Request Validation

    ↓

Secrets Detection

    ↓

Branch Protection

    ↓

Automated Merge Controls
```

Phase 9 therefore closes the governance gap that remained around the core delivery pipeline.

The project can now move from **governing changes entering the Jenkins-based delivery system** to demonstrating an additional CI/CD implementation using **GitHub Actions**.

---

# 9.30 — Next Phase: GitHub Actions CI/CD

The next implementation phase is:

**Phase 10 — GitHub Actions CI/CD**

Documentation:

```text
10-github-actions-ci-cd.md
```

Phase 10 will introduce **GitHub Actions** as an alternative CI/CD implementation for the project.

The purpose is not simply to add another CI/CD tool.

The objective is to demonstrate that the same software delivery and DevSecOps principles implemented with Jenkins can also be expressed using a **GitHub-native CI/CD platform**.

The comparison will therefore focus on engineering capabilities rather than tools alone.

```text
                    Phase 8
                       │
                       ▼
              Jenkins CI/CD
                       │
                       ▼
             DevSecOps Pipeline
                       │
                       ▼
                    Phase 9
                       │
                       ▼
            Repository Governance
                       │
                       ▼
              PR Security Controls
                       │
                       ▼
                    Phase 10
                       │
                       ▼
          GitHub Actions CI/CD
```

---

## Phase 10 Planned Scope

The GitHub Actions implementation will evaluate the following workflow:

```text
GitHub Repository
       │
       ▼
GitHub Actions
       │
       ├── Checkout
       │
       ├── Node.js Setup
       │
       ├── Dependency Installation
       │
       ├── Unit Testing
       │
       ├── Code Quality / SAST
       │
       ├── Dependency Security
       │
       ├── Docker Build
       │
       ├── Container Security
       │
       ├── ECR Authentication
       │
       ├── ECR Push
       │
       ├── EKS Authentication
       │
       ├── Kubernetes Deployment
       │
       └── Deployment Verification
```

Where appropriate, the Phase 10 implementation will reuse the same application, AWS services, security objectives, and deployment architecture established during the earlier phases.

This makes the comparison between Jenkins and GitHub Actions meaningful because the underlying application and cloud platform remain consistent.

---

# 9.31 — Jenkins and GitHub Actions Strategy

Phase 10 will **not immediately replace Jenkins**.

Instead, the project will demonstrate two CI/CD implementation approaches:

```text
                    GitHub Repository
                           │
             ┌─────────────┴─────────────┐
             │                           │
             ▼                           ▼
          Jenkins                 GitHub Actions
             │                           │
             ▼                           ▼
       CI/CD Pipeline              CI/CD Workflow
             │                           │
             ├── Test                    ├── Test
             ├── SAST                    ├── Security
             ├── SCA                     ├── Build
             ├── Docker                  ├── Scan
             ├── Trivy                   ├── ECR
             ├── ECR                     └── EKS
             └── EKS
```

This creates an opportunity to demonstrate knowledge of:

* Jenkins-based CI/CD
* GitHub-native CI/CD
* pipeline-as-code
* workflow automation
* cloud authentication
* security integration
* container delivery
* Kubernetes deployment
* CI/CD architecture trade-offs

The objective is therefore to demonstrate **transferable DevOps engineering principles**, rather than dependence on a single CI/CD platform.

---

# 9.32 — Phase 9 → Phase 10 Engineering Progression

The progression from Phase 9 to Phase 10 can be summarized as:

```text
Phase 8
Core Jenkins CI/CD & DevSecOps
        │
        ▼
Phase 9
Repository Governance
        │
        ▼
Pull Request Validation
        │
        ▼
Secrets Detection
        │
        ▼
Branch Protection
        │
        ▼
Controlled Changes to main
        │
        ▼
Phase 10
GitHub Actions CI/CD
        │
        ▼
GitHub-Native Automation
        │
        ▼
Jenkins vs GitHub Actions
        │
        ▼
Phase 11
Complete DevSecOps Platform
```

This progression is intentional.

The project first established a functioning delivery platform, then added governance around that platform, and will next demonstrate an alternative CI/CD implementation using GitHub-native automation.

---

# 9.33 — Future Project Roadmap

With Phase 9 completed, the remaining roadmap is:

| Phase        | Documentation                                       | Scope                                                                               | Status     |
| ------------ | --------------------------------------------------- | ----------------------------------------------------------------------------------- | ---------- |
| **Phase 9**  | `09-devsecops-governance-and-security-hardening.md` | PR validation, secrets detection, GitHub integration, branch protection, governance | ✅ Complete |
| **Phase 10** | `10-github-actions-ci-cd.md`                        | GitHub Actions CI/CD implementation                                                 | ⏭️ Next    |
| **Phase 11** | `11-complete-devsecops-platform.md`                 | Final integration, architecture, validation, comparison, and project conclusion     | 🔜 Planned |

---

# 9.34 — Final Phase 9 Perspective

Phase 9 does not represent the end of the project.

It represents the completion of the **governance layer** of the Jenkins-based DevSecOps implementation.

The project has evolved from simply asking:

> **“Can the application be built and deployed automatically?”**

to also asking:

> **“Can changes be validated, secured, and governed before they enter the deployment workflow?”**

Phase 9 answers that second question through:

```text
Pull Requests
     +
Jenkins PR Validation
     +
Gitleaks
     +
Jest
     +
SonarCloud
     +
Snyk
     +
GitHub Status Reporting
     +
Branch Protection
     +
Controlled Merge
```

The next question is therefore:

> **“Can the same DevSecOps delivery principles be implemented using GitHub-native CI/CD?”**

That is the purpose of **Phase 10 — GitHub Actions CI/CD**.

```text
Phase 8
Build the delivery platform
        │
        ▼
Phase 9
Govern the changes entering it
        │
        ▼
Phase 10
Implement GitHub-native CI/CD
        │
        ▼
Phase 11
Integrate, compare, validate, and conclude
```

**Next Phase:** Phase 10 — GitHub Actions CI/CD

**Next Documentation:** `10-github-actions-ci-cd.md`

**Phase 9 Status:** ✅ Completed

**Phase 10 Status:** ⏭️ Next

---

