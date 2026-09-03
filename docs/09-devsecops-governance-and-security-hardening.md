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