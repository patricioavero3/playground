module "route_table_public" {
  source    = "./modules/route_table_public"
  vpc_id    = module.vpc.id
  igw_id    = module.internet_gateway.id
  subnet_ids = module.public_subnets.id
  name      = "${var.poc_name}-public-rt"
}
