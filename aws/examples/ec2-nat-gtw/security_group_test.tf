module "security_group_test" {
  source    = "./modules/security_group_test"
  name      = "${var.poc_name}-test-sg"
  vpc_id    = module.vpc.id
  nat_sg_id = module.security_group_nat.id
}
