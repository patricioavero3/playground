module "security_group_nat" {
  source = "./modules/security_group_nat"
  name   = "${var.poc_name}-nat-sg"
  vpc_id = module.vpc.id
}
