variable "project_name" {
  description = "Project name used to tag AWS resources."
  type        = string
}

variable "aws_region" {
  description = "AWS Region used for all infrastructure."
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the Amazon VPC."
  type        = string
}

variable "availability_zones" {
  description = "Availability Zones used for the VPC."
  type        = list(string)
}