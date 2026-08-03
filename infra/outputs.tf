output "vpc_id" {
  description = "ID of the project VPC"
  value       = aws_vpc.node_vpc.id
}

output "ecr_repository_url" {
  description = "URL of the Amazon ECR repository"
  value       = aws_ecr_repository.node_app_repository.repository_url
}

output "eks_cluster_name" {
  description = "Name of the Amazon EKS cluster"
  value       = aws_eks_cluster.node_cluster.name
}

output "eks_cluster_endpoint" {
  description = "Endpoint for the Amazon EKS cluster"
  value       = aws_eks_cluster.node_cluster.endpoint
}

output "eks_cluster_certificate_authority" {
  description = "Certificate authority data for the Amazon EKS cluster"
  value       = aws_eks_cluster.node_cluster.certificate_authority[0].data
}