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

output "jenkins_instance_id" {
  description = "ID of the Jenkins EC2 instance"
  value       = aws_instance.jenkins_server.id
}

output "jenkins_public_ip" {
  description = "Elastic IP address assigned to the Jenkins server"
  value       = aws_eip.jenkins_eip.public_ip
}

output "jenkins_public_dns" {
  description = "Public DNS name of the Jenkins EC2 instance"
  value       = aws_instance.jenkins_server.public_dns
}

output "jenkins_instance_profile" {
  description = "IAM Instance Profile attached to Jenkins"
  value       = aws_iam_instance_profile.jenkins_instance_profile.name
}