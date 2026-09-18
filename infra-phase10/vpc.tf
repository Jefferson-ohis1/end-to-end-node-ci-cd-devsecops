# ============================================================
# Phase 10 — Minimal VPC Networking
# ============================================================

# ------------------------------------------------------------
# VPC
# ------------------------------------------------------------

resource "aws_vpc" "node_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name      = "${var.project_name}-phase10-vpc"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
    Purpose   = "GitHub Actions and EKS"
  }
}

# ------------------------------------------------------------
# Internet Gateway
# ------------------------------------------------------------

resource "aws_internet_gateway" "node_igw" {
  vpc_id = aws_vpc.node_vpc.id

  tags = {
    Name      = "${var.project_name}-phase10-igw"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
  }
}

# ------------------------------------------------------------
# Public Subnet — Availability Zone 1
# ------------------------------------------------------------

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.node_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = true

  tags = {
    Name                     = "${var.project_name}-phase10-public-1"
    Project                  = var.project_name
    Phase                    = "Phase 10"
    ManagedBy                = "Terraform"
    Purpose                  = "EKS cluster subnet"
    "kubernetes.io/role/elb" = "1"
  }
}

# ------------------------------------------------------------
# Public Subnet — Availability Zone 2
# ------------------------------------------------------------

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.node_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = true

  tags = {
    Name                     = "${var.project_name}-phase10-public-2"
    Project                  = var.project_name
    Phase                    = "Phase 10"
    ManagedBy                = "Terraform"
    Purpose                  = "EKS cluster subnet"
    "kubernetes.io/role/elb" = "1"
  }
}

# ------------------------------------------------------------
# Public Route Table
# ------------------------------------------------------------

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.node_vpc.id

  tags = {
    Name      = "${var.project_name}-phase10-public-rt"
    Project   = var.project_name
    Phase     = "Phase 10"
    ManagedBy = "Terraform"
  }
}

# ------------------------------------------------------------
# Internet Route
# ------------------------------------------------------------

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.node_igw.id
}

# ------------------------------------------------------------
# Route Table Associations
# ------------------------------------------------------------

resource "aws_route_table_association" "public_subnet_1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public_subnet_2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public.id
}
