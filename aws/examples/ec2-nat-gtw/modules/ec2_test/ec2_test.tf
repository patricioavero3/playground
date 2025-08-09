resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids = var.vpc_security_group_ids
  tags = {
    Name = var.name
  }
}
