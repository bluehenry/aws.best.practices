data "aws_eks_cluster" "non_prod_eks" {
  name = var.eks_cluster_name
}

module "eks-node-group-1" {
  source = "../../node-group-module"

  node_group_name      = "eks-node-group-1"
  node_role_arn        = var.node_role_arn

  cluster_name = data.aws_eks_cluster.non_prod_eks.id

  subnet_ids = var.private_subnets_1

  source_security_group_ids = var.security_groups

  desired_size = 1
  min_size     = 1
  max_size     = 2
  ami_type     = "AL2_x86_64"
  instance_types = ["r5.2xlarge"]
  disk_size = 200

  ec2_ssh_key = var.node_ssh_key

  tags = {
    Environment = "non-prod"
  }
}

module "eks-node-group-2" {
  source = "../../node-group-module"

  node_group_name      = "eks-node-group-2"
  node_role_arn        = var.node_role_arn

  cluster_name = data.aws_eks_cluster.non_prod_eks.id

  subnet_ids = var.private_subnets_2

  source_security_group_ids = var.security_groups

  desired_size = 1
  min_size     = 1
  max_size     = 2
  ami_type     = "AL2_x86_64"
  instance_types = ["r5.2xlarge"]
  disk_size = 200

  ec2_ssh_key = var.node_ssh_key

  tags = {
    Environment = "non-prod"
  }
}

module "eks-node-group-3" {
  source = "../../node-group-module"

  node_group_name      = "eks-node-group-3"
  node_role_arn        = var.node_role_arn

  cluster_name = data.aws_eks_cluster.non_prod_eks.id

  subnet_ids = var.private_subnets_3

  source_security_group_ids = var.security_groups

  desired_size = 1
  min_size     = 1
  max_size     = 1
  ami_type     = "AL2_x86_64"
  instance_types = ["r5.2xlarge"]
  disk_size = 100

  ec2_ssh_key = var.node_ssh_key

  tags = {
    Environment = "non-prod"
  }
}

module "eks-node-group-4" {
  source = "../../node-group-module"

  node_group_name      = "eks-node-group-4"
  node_role_arn        = var.node_role_arn

  cluster_name = data.aws_eks_cluster.non_prod_eks.id

  subnet_ids = var.private_subnets_4

  source_security_group_ids = var.security_groups

  desired_size = 1
  min_size     = 1
  max_size     = 1
  ami_type     = "AL2_x86_64"
  instance_types = ["r5.4xlarge"]
  disk_size = 100

  ec2_ssh_key = var.node_ssh_key

  tags = {
    Environment = "non-prod"
  }
}
