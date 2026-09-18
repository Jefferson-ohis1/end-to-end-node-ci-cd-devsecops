# ============================================================
# Phase 10 — EKS Cluster Security Group
# ============================================================

# ------------------------------------------------------------
# EKS Cluster Security Group
# ------------------------------------------------------------

resource "aws_security_group" "eks_cluster_sg" {
  name        = "${var.project_name}-phase10-eks-cluster-sg"
  description = "Security group for the Phase 10 Amazon EKS control plane"
  vpc_id      = aws_vpc.node_vpc.id

  tags = {
    Name      = "${var.project_name}-phase10-eks-cluster-sg"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
    Purpose   = "EKS control plane"
  }
}

# ------------------------------------------------------------
# EKS Cluster Egress
# ------------------------------------------------------------

resource "aws_vpc_security_group_egress_rule" "eks_cluster_egress" {
  security_group_id = aws_security_group.eks_cluster_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  ip_protocol = "-1"

  description = "Allow outbound traffic from the EKS control plane"
}
