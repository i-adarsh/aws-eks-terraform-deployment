provider "aws" {
    region = "us-east-1"
    profile = "default"
}

data "aws_eks_cluster" "cluster" {
  name = module.my-cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.my-cluster.cluster_id
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
}

module "my-cluster" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "my-cluster"
  cluster_version = "1.19"
  subnets         = ["subnet-be09bfd8", "subnet-74ae1c2b", "subnet-727fc353"]
  vpc_id          = "vpc-d36fadae"

  worker_groups = [
    {
      instance_type = "m4.large"
      asg_max_size  = 1
    }
  ]
}