module "private_subnets" {
  source   = "./modules/subnet"
  vpc_id   = module.vpc.id
  cidr_blocks = local.private_subnet_cidrs
  azs      = slice(data.aws_availability_zones.available.names, 0, var.az_count)
  public   = false
  name     = "${var.poc_name}-private"
}
