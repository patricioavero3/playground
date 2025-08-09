module "ec2_test" {
  source         = "./modules/ec2_test"
  ami            = var.test_ami
  instance_type  = var.test_instance_type
  subnet_id      = module.private_subnets.id[0]
  key_name       = module.key_pair.key_name
  name           = "${var.poc_name}-test"
  associate_public_ip_address = false
  vpc_security_group_ids = [module.security_group_test.id]
}
