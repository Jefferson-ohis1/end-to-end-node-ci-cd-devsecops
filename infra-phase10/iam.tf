# ============================================================
# Phase 10 — EKS Cluster IAM
# ============================================================

# ------------------------------------------------------------
# EKS Cluster IAM Role
# ------------------------------------------------------------

resource "aws_iam_role" "eks_cluster_role" {
  name = "${var.project_name}-phase10-eks-cluster-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "eks.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name      = "${var.project_name}-phase10-eks-cluster-role"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
    Purpose   = "EKS control plane"
  }
}

# ------------------------------------------------------------
# EKS Cluster Policy
# ------------------------------------------------------------

resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}
