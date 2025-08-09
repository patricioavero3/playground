module "vpc" {
  source     = "./modules/vpc"
  cidr_block = local.vpc_cidr
  name       = "${var.poc_name}-vpc"
}
