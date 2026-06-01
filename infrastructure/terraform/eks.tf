module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.8.5"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  enable_cluster_creator_admin_permissions = true

  cluster_endpoint_public_access = true

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_groups = {
    default = {
      instance_types = ["t3.medium"]

      min_size     = 4
      max_size     = 5
      desired_size = 4


      force_update_version = true

      update_config = {
        max_unavailable = 1
      }
    }
  }


  tags = {
    Project = "Project10"
  }
}
