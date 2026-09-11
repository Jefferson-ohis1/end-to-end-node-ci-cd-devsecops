# Phase 9 — DevSecOps Governance and Security Hardening

## 9.1 — GitHub Repository Governance Baseline

### Objective

The objective of this phase is to establish repository governance and security controls around the existing Jenkins-based CI/CD and DevSecOps pipeline.

The baseline assessment was performed before implementing repository governance changes to ensure that the existing GitHub configuration was understood and documented.

---

### Repository Baseline

| Configuration | Current Status |
|---|---|
| Repository | `end-to-end-node-ci-cd-devsecops` |
| Default Branch | `main` |
| Repository Visibility | Public |
| Branch Protection | Not configured |
| Repository Rulesets | None configured |
| GitHub Actions Workflows | None configured |
| GitHub Webhooks | None configured |
| Security Policy | Disabled |
| Security Advisories | Enabled |
| Private Vulnerability Reporting | Disabled |
| Dependabot Alerts | Disabled |
| Code Scanning | Requires setup |
| Secret Scanning | Enabled |

---

### Local Git Baseline

The local repository was verified using Git commands.

```bash
git branch -a
```

```bash
git status
```

```text
Current branch:
main

Remote:
origin/main

Branch status:
Up to date with origin/main

Remote branches:
origin/main
```

> The repository currently contains only the main branch locally and the origin/main remote branch.

---

### Phase 9 Working Branch Creation

After completing the repository baseline assessment, a dedicated Git branch was created for the Phase 9 governance and security-hardening work.

The branch was created using:

```bash
git checkout -b phase9-governance
```

The new branch provides an isolated workspace for implementing and testing the Phase 9 governance controls without making direct changes to the `main` branch.

The branch was created specifically to support the incremental implementation of:

* Pull Request validation
* Security and quality checks
* Secrets detection
* Repository governance controls
* Branch protection requirements
* Jenkins PR integration
* GitHub webhook configuration

The Phase 9 implementation follows a feature-branch workflow:

```text
main
  │
  └── phase9-governance
          │
          ├── PR Validation Pipeline
          ├── Security Controls
          ├── Repository Governance
          ├── Jenkins Integration
          └── Branch Protection
```

This approach ensures that governance changes can be implemented, tested, and verified before they are merged into `main`.

The `main` branch therefore remains the stable baseline while `phase9-governance` serves as the working branch for Phase 9 development.

The branch was subsequently used to implement and commit the `Jenkinsfile.pr` Pull Request validation pipeline.


---

### Governance Baseline

The GitHub repository currently does not enforce branch protection or repository rulesets.

The main branch can therefore be updated without requiring:

- Pull requests
- Required status checks
- Required reviews
- Branch protection rules

This baseline will be used as the starting point for implementing repository governance during Phase 9.

---

### Security Baseline

GitHub Security & Quality currently reports:

- Security Policy: Disabled
- Security Advisories: Enabled
- Private Vulnerability Reporting: Disabled
- Dependabot Alerts: Disabled
- Code Scanning: Requires setup
- Secret Scanning: Enabled

These controls will be evaluated as part of the security-hardening activities in this phase.

---

### Webhook Baseline

No GitHub repository webhooks are currently configured.

A GitHub-to-Jenkins webhook will be introduced later in this phase after the Jenkins infrastructure has been recreated and its externally accessible endpoint has been verified.

---

### GitHub Actions Baseline

No GitHub Actions workflow files currently exist in the repository.

GitHub Actions CI/CD is intentionally excluded from the current phase and is reserved for:

Phase 10 — GitHub Actions CI/CD

---

### Phase 9 Governance Direction

The intended governance model is:

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
PR Validation
        │
        ├── Security Validation
        ├── Secrets Detection
        └── CI/CD Validation
        │
        ▼
Required Checks
        │
        ▼
Pull Request Review
        │
        ▼
Merge to `main`
        │
        ▼
Jenkins CI/CD Pipeline
```

> The repository governance controls will be implemented incrementally so that branch protection is not enabled until the required validation mechanisms have been successfully implemented and verified.

---

## 9.2 — Pull Request Validation Pipeline

### Objective

The objective of this stage is to introduce a dedicated Jenkins validation pipeline for Pull Requests before changes can be merged into the `main` branch.

The PR validation pipeline is separated from the existing Jenkins CI/CD deployment pipeline to ensure that Pull Requests undergo security and quality validation without triggering container publishing, infrastructure deployment, or production-facing application changes.

---

### PR Validation Pipeline

A dedicated Jenkins pipeline definition was created:

```text
Jenkinsfile.pr
```

The pipeline is designed to validate Pull Request changes through the following stages:

```text
Pull Request
      │
      ▼
Checkout PR
      │
      ▼
Install Dependencies
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
PR Validation Result
```
---

### Validation Controls

| Validation Stage                  | Tool / Mechanism | Purpose                                                     |
|-----------------------------------|------------------|-------------------------------------------------------------|
| Checkout PR                       | Jenkins SCM      | Retrieve Pull Request source                                |
| Dependency Installation           | npm              | Install project dependencies using `package-lock.json`      |
| Unit Testing                      | Jest             | Validate application functionality                          |
| Static Application Security Testing | SonarCloud      | Analyze source code for quality and security issues         |
| Software Composition Analysis     | Snyk             | Identify vulnerabilities in application dependencies       |

---

### Separation from Full CI/CD Pipeline

The PR validation pipeline is intentionally separated from the existing Jenkinsfile.

The existing Jenkinsfile performs the full CI/CD and DevSecOps workflow, including:

- Docker image build
- Trivy container security scanning
- Amazon ECR image publishing
- Amazon EKS deployment
- Kubernetes verification
- Application health checks
- OWASP ZAP DAST

These deployment-oriented stages are excluded from Jenkinsfile.pr.

This ensures that Pull Request validation remains a controlled pre-merge quality and security gate.

---

### Jenkinsfile.pr Implementation

The dedicated PR validation pipeline was implemented with:

- Jenkins JDK 21 tool configuration
- Node.js 24 tool configuration
- Explicit PR source checkout
- Dependency installation using npm ci
- Jest unit testing with coverage
- SonarCloud SAST analysis
- Snyk SCA analysis
- Jenkins timestamps for improved validation traceability

The implementation was committed to the phase9-governance branch.

```text
Baseline
   ↓
Create phase9-governance branch
   ↓
Implement governance controls
   ↓
Commit changes
   ↓
Jenkins verification
   ↓
Pull Request validation
   ↓
Required status checks
   ↓
Merge to main
```
---

### Current Verification Status

| Verification Item                | Status                                      |
| -------------------------------- | ------------------------------------------- |
| `Jenkinsfile.pr` created         | ✅                                           |
| PR validation stages defined     | ✅                                           |
| Unit testing configured          | ✅                                           |
| SonarCloud SAST configured       | ✅                                           |
| Snyk SCA configured              | ✅                                           |
| Deployment stages excluded       | ✅                                           |
| Committed to `phase9-governance` | ✅                                           |
| Jenkins execution                | ⏳ Pending Jenkins infrastructure recreation |
| GitHub Pull Request validation   | ⏳ Pending                                   |
| Required status check            | ⏳ Pending                                   |
| Screenshot evidence              | ⏳ Pending                                   |

> The PR validation pipeline has been implemented at repository level but has not yet been executed in Jenkins. Jenkins execution and GitHub Pull Request validation will be performed after the Jenkins infrastructure is recreated and the PR webhook/integration is configured.

---