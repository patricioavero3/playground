module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.id
  name   = "${var.poc_name}-igw"
}
