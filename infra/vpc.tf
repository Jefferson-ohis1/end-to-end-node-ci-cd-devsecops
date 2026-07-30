
# Amazon VPC

resource "aws_vpc" "node_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "${var.project_name}-vpc"
  }
}

# Internet Gateway

resource "aws_internet_gateway" "node_igw" {
  vpc_id = aws_vpc.node_vpc.id

  tags = {
    Name = "${var.project_name}-igw"
  }
}

# Public Subnet 1

resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.node_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.availability_zones[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-1"

    "kubernetes.io/role/elb" = "1"
  }
}

# Public Subnet 2

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.node_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = var.availability_zones[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-2"

    "kubernetes.io/role/elb" = "1"
  }
}

# Private Subnet 1

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.node_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = var.availability_zones[0]

  tags = {
    Name = "${var.project_name}-private-subnet-1"

    "kubernetes.io/role/internal-elb" = "1"
  }
}

# Private Subnet 2

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.node_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = var.availability_zones[1]

  tags = {
    Name = "${var.project_name}-private-subnet-2"

    "kubernetes.io/role/internal-elb" = "1"
  }
}