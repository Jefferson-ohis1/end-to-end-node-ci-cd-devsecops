
# Jenkins Security Group

resource "aws_security_group" "jenkins_sg" {
  name        = "${var.project_name}-jenkins-sg"
  description = "Security group for the Jenkins server"
  vpc_id      = aws_vpc.node_vpc.id

  tags = {
    Name = "${var.project_name}-jenkins-sg"
  }
}

# SSH Access

resource "aws_vpc_security_group_ingress_rule" "jenkins_ssh" {
  security_group_id = aws_security_group.jenkins_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port = 22
  to_port   = 22

  ip_protocol = "tcp"

  description = "Allow SSH access"
}

# HTTP Access

resource "aws_vpc_security_group_ingress_rule" "jenkins_http" {
  security_group_id = aws_security_group.jenkins_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port = 80
  to_port   = 80

  ip_protocol = "tcp"

  description = "Allow HTTP access"
}

# Jenkins Web Interface

resource "aws_vpc_security_group_ingress_rule" "jenkins_web" {
  security_group_id = aws_security_group.jenkins_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  from_port = 8080
  to_port   = 8080

  ip_protocol = "tcp"

  description = "Allow Jenkins web interface"
}

# Outbound Internet Access

resource "aws_vpc_security_group_egress_rule" "jenkins_egress" {
  security_group_id = aws_security_group.jenkins_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  ip_protocol = "-1"

  description = "Allow all outbound traffic"
}

# EKS Cluster Security Group

resource "aws_security_group" "eks_cluster_sg" {
  name        = "${var.project_name}-eks-cluster-sg"
  description = "Security group for the Amazon EKS control plane"
  vpc_id      = aws_vpc.node_vpc.id

  tags = {
    Name = "${var.project_name}-eks-cluster-sg"
  }
}

# EKS Worker Node Security Group

resource "aws_security_group" "eks_worker_sg" {
  name        = "${var.project_name}-eks-worker-sg"
  description = "Security group for the Amazon EKS worker nodes"
  vpc_id      = aws_vpc.node_vpc.id

  tags = {
    Name = "${var.project_name}-eks-worker-sg"
  }
}

# EKS Cluster Egress Rule

resource "aws_vpc_security_group_egress_rule" "eks_cluster_egress" {
  security_group_id = aws_security_group.eks_cluster_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  ip_protocol = "-1"

  description = "Allow outbound traffic from the EKS control plane"
}

# Worker Nodes to EKS Control Plane

resource "aws_vpc_security_group_ingress_rule" "eks_cluster_https" {
  security_group_id            = aws_security_group.eks_cluster_sg.id
  referenced_security_group_id = aws_security_group.eks_worker_sg.id

  from_port = 443
  to_port   = 443

  ip_protocol = "tcp"

  description = "Allow worker nodes to communicate with the EKS API server"
}

# EKS Worker Node Egress Rule

resource "aws_vpc_security_group_egress_rule" "eks_worker_egress" {
  security_group_id = aws_security_group.eks_worker_sg.id

  cidr_ipv4 = "0.0.0.0/0"

  ip_protocol = "-1"

  description = "Allow outbound traffic from the EKS worker nodes"
}

# Worker Node to Worker Node Communication (Node-to-Node Communication)

resource "aws_vpc_security_group_ingress_rule" "eks_worker_self" {
  security_group_id            = aws_security_group.eks_worker_sg.id
  referenced_security_group_id = aws_security_group.eks_worker_sg.id

  ip_protocol = "-1"

  description = "Allow worker nodes to communicate with each other"
}

# EKS Control Plane to Worker Nodes (Kubelet)

resource "aws_vpc_security_group_ingress_rule" "eks_worker_kubelet" {
  security_group_id            = aws_security_group.eks_worker_sg.id
  referenced_security_group_id = aws_security_group.eks_cluster_sg.id

  from_port = 10250
  to_port   = 10250

  ip_protocol = "tcp"

  description = "Allow the EKS control plane to communicate with the kubelet"
}



