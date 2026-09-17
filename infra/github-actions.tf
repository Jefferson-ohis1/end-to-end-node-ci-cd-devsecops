# ============================================================
# Phase 10 — GitHub Actions OIDC / AWS IAM
# ============================================================

locals {
  github_repository = "Jefferson-ohis1/end-to-end-node-ci-cd-devsecops"
  github_branch     = "main"
}

# ------------------------------------------------------------
# GitHub Actions OIDC Identity Provider
# ------------------------------------------------------------

resource "aws_iam_openid_connect_provider" "github_actions" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [
    "sts.amazonaws.com"
  ]

  thumbprint_list = [
    "6938fd4d98bab03faadb97b34396831e3780aea1"
  ]

  tags = {
    Name      = "${var.project_name}-github-actions-oidc"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
    Purpose   = "GitHub Actions OIDC authentication"
  }
}

# ------------------------------------------------------------
# IAM Role Assumed by GitHub Actions
# ------------------------------------------------------------

resource "aws_iam_role" "github_actions" {
  name = "${var.project_name}-github-actions-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Federated = aws_iam_openid_connect_provider.github_actions.arn
        }

        Action = "sts:AssumeRoleWithWebIdentity"

        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com"
          }

          StringLike = {
            "token.actions.githubusercontent.com:sub" = "repo:${local.github_repository}:ref:refs/heads/${local.github_branch}"
          }
        }
      }
    ]
  })

  tags = {
    Name      = "${var.project_name}-github-actions-role"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
    Purpose   = "GitHub Actions CI/CD"
  }
}

# ------------------------------------------------------------
# ECR Permissions
# ------------------------------------------------------------

resource "aws_iam_role_policy" "github_actions_ecr" {
  name = "${var.project_name}-github-actions-ecr"
  role = aws_iam_role.github_actions.id

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "ecr:GetAuthorizationToken"
        ]

        Resource = "*"
      },
      {
        Effect = "Allow"

        Action = [
          "ecr:BatchCheckLayerAvailability",
          "ecr:BatchGetImage",
          "ecr:CompleteLayerUpload",
          "ecr:DescribeImages",
          "ecr:DescribeRepositories",
          "ecr:InitiateLayerUpload",
          "ecr:ListImages",
          "ecr:PutImage",
          "ecr:UploadLayerPart"
        ]

        Resource = aws_ecr_repository.node_app_repository.arn
      }
    ]
  })
}

# ------------------------------------------------------------
# EKS API Permission
# ------------------------------------------------------------

resource "aws_iam_role_policy" "github_actions_eks" {
  name = "${var.project_name}-github-actions-eks"
  role = aws_iam_role.github_actions.id

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "eks:DescribeCluster"
        ]

        Resource = aws_eks_cluster.node_cluster.arn
      }
    ]
  })
}

# ------------------------------------------------------------
# EKS Access Entry
# ------------------------------------------------------------

resource "aws_eks_access_entry" "github_actions" {
  cluster_name  = aws_eks_cluster.node_cluster.name
  principal_arn = aws_iam_role.github_actions.arn
  type          = "STANDARD"
}

# ------------------------------------------------------------
# EKS Kubernetes Permissions
# ------------------------------------------------------------

resource "aws_eks_access_policy_association" "github_actions" {
  cluster_name  = aws_eks_cluster.node_cluster.name
  principal_arn = aws_iam_role.github_actions.arn
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSEditPolicy"

  access_scope {
    type = "namespace"

    namespaces = [
      "default"
    ]
  }

  depends_on = [
    aws_eks_access_entry.github_actions
  ]
}
