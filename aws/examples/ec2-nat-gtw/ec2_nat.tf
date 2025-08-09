module "ec2_nat" {
  source         = "./modules/ec2_nat"
  ami            = var.nat_ami
  instance_type  = var.nat_instance_type
  subnet_id      = module.public_subnets.id[0]
  key_name       = module.key_pair.key_name
  name           = "${var.poc_name}-nat"
  vpc_security_group_ids = [module.security_group_nat.id]
}
