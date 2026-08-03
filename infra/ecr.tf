
# Amazon Elastic Container Registry (ECR)

resource "aws_ecr_repository" "node_app_repository" {
  name                 = "${var.project_name}-repository"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "${var.project_name}-repository"
  }
}