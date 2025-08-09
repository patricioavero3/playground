module "key_pair" {
  source   = "./modules/key_pair"
  key_name = "${var.poc_name}-nat-key"
}

output "nat_private_key_pem" {
  value     = module.key_pair.private_key_pem
  sensitive = true
}