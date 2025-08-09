resource "aws_security_group" "this" {
  name        = var.name
  description = "Allow SSH from NAT instance to test instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH from NAT instance"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    security_groups = [var.nat_sg_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.name
  }
}
