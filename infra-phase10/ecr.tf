# ============================================================
# Phase 10 — Amazon ECR
# ============================================================

resource "aws_ecr_repository" "node_app_repository" {
  name                 = "${var.project_name}-phase10-repository"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name      = "${var.project_name}-phase10-repository"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
    Purpose   = "GitHub Actions container images"
  }
}
