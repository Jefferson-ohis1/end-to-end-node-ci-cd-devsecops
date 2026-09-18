variable "project_name" {
  description = "Project name used to name and tag Phase 10 AWS resources."
  type        = string
}

variable "aws_region" {
  description = "AWS Region used for Phase 10 infrastructure."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the Phase 10 VPC."
  type        = string
}

variable "availability_zones" {
  description = "Two Availability Zones used by the Phase 10 EKS cluster."
  type        = list(string)

  validation {
    condition     = length(var.availability_zones) == 2
    error_message = "Phase 10 requires exactly two Availability Zones."
  }
}
