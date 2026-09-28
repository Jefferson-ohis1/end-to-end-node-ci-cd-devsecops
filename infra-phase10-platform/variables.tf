variable "aws_region" {
  description = "AWS region containing the Phase 10 EKS cluster."
  type        = string
  default     = "us-east-1"
}

variable "eks_cluster_name" {
  description = "Name of the existing Phase 10 EKS cluster."
  type        = string
  default     = "node-devsecops-phase10-cluster"
}

variable "metrics_server_chart_version" {
  description = "Pinned Metrics Server Helm chart version."
  type        = string
  default     = "3.13.1"
}
