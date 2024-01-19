module "roboshop" {
  #source = "../terraform-aws-vpc"
  source = "git::https://github.com/kunchamthiru12/terraform-aws-vpc.git?ref=main"
  project_name = var.project_name
  environment = var.enviroment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags


  # public subnet
  public_subnets_cidr = var.public_subnet_cidr

  # private subnet
  private_subnets_cidr = var.private_subnet_cidr

  # database subnet
  database_subnets_cidr = var.database_subnet_cidr
  
  #peering
  is_peering_required = var.is_peering_required

}