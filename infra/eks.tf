# Amazon EKS Cluster

resource "aws_eks_cluster" "node_cluster" {
  name     = "${var.project_name}-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  version = "1.33"

  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }

  vpc_config {
    subnet_ids = [
      aws_subnet.public_subnet_1.id,
      aws_subnet.public_subnet_2.id,
      aws_subnet.private_subnet_1.id,
      aws_subnet.private_subnet_2.id
    ]

    security_group_ids = [
      aws_security_group.eks_cluster_sg.id
    ]
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy
  ]

  tags = {
    Name = "${var.project_name}-cluster"
  }
}

# Jenkins EKS Access Entry

resource "aws_eks_access_entry" "jenkins_access" {
  cluster_name  = aws_eks_cluster.node_cluster.name
  principal_arn = aws_iam_role.jenkins_role.arn
  type          = "STANDARD"
}

# Jenkins EKS Cluster Administrator Access

resource "aws_eks_access_policy_association" "jenkins_cluster_admin" {
  cluster_name  = aws_eks_cluster.node_cluster.name
  principal_arn = aws_iam_role.jenkins_role.arn

  policy_arn = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"

  access_scope {
    type = "cluster"
  }

  depends_on = [
    aws_eks_access_entry.jenkins_access
  ]
}

# Amazon EKS Managed Node Group

resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.node_cluster.name
  node_group_name = "${var.project_name}-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn

  subnet_ids = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  instance_types = ["m7i-flex.large"]

  depends_on = [
    aws_iam_role_policy_attachment.eks_worker_node_policy,
    aws_iam_role_policy_attachment.eks_ecr_read_only,
    aws_iam_role_policy_attachment.eks_cni_policy
  ]

  tags = {
    Name = "${var.project_name}-node-group"
  }
}