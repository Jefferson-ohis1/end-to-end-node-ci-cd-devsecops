# ============================================================
# Phase 10 — Amazon EKS Control Plane
# ============================================================

resource "aws_eks_cluster" "node_cluster" {
  name     = "${var.project_name}-phase10-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn
  version  = "1.33"

  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }

  vpc_config {
    subnet_ids = [
      aws_subnet.public_subnet_1.id,
      aws_subnet.public_subnet_2.id
    ]

    security_group_ids = [
      aws_security_group.eks_cluster_sg.id
    ]

    endpoint_public_access  = true
    endpoint_private_access = false
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy
  ]

  tags = {
    Name      = "${var.project_name}-phase10-cluster"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
    Purpose   = "GitHub Actions CI/CD"
  }
}
