data "aws_availability_zones" "available" {}

module "public_subnets" {
  source   = "./modules/subnet"
  vpc_id   = module.vpc.id
  cidr_blocks = local.public_subnet_cidrs
  azs      = slice(data.aws_availability_zones.available.names, 0, var.az_count)
  public   = true
  name     = "${var.poc_name}-public"
}
