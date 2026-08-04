
# Jenkins EC2 IAM Role

resource "aws_iam_role" "jenkins_role" {

  name = "${var.project_name}-jenkins-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name = "${var.project_name}-jenkins-role"
  }
}

# Amazon EKS Cluster Management

resource "aws_iam_role_policy_attachment" "jenkins_eks_policy" {

  role       = aws_iam_role.jenkins_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"

}

# Amazon EKS Worker Node Management

resource "aws_iam_role_policy_attachment" "jenkins_worker_policy" {

  role       = aws_iam_role.jenkins_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"

}

# Amazon ECR Full Access

resource "aws_iam_role_policy_attachment" "jenkins_ecr_policy" {

  role       = aws_iam_role.jenkins_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"

}

# Systems Manager

resource "aws_iam_role_policy_attachment" "jenkins_ssm_policy" {

  role       = aws_iam_role.jenkins_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"

}

# Jenkins IAM Instance Profile

resource "aws_iam_instance_profile" "jenkins_instance_profile" {

  name = "${var.project_name}-jenkins-instance-profile"

  role = aws_iam_role.jenkins_role.name

  tags = {
    Name = "${var.project_name}-jenkins-instance-profile"
  }

}

# Jenkins EC2 Instance

resource "aws_instance" "jenkins_server" {

  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "m7i-flex.large"
  key_name      = "jefferson-key-pair-1"

  subnet_id = aws_subnet.public_subnet_1.id

  vpc_security_group_ids = [
    aws_security_group.jenkins_sg.id
  ]

  iam_instance_profile = aws_iam_instance_profile.jenkins_instance_profile.name

  associate_public_ip_address = true

  root_block_device {

    volume_size = 30
    volume_type = "gp3"

    delete_on_termination = true

  }

  tags = {

    Name = "jenkins-server"

  }

}

# Jenkins Elastic IP

resource "aws_eip" "jenkins_eip" {

  domain = "vpc"

  tags = {
    Name = "${var.project_name}-jenkins-eip"
  }

}

resource "aws_eip_association" "jenkins_eip_assoc" {

  instance_id   = aws_instance.jenkins_server.id
  allocation_id = aws_eip.jenkins_eip.id

}




