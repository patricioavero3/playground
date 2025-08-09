resource "aws_security_group" "this" {
  name        = var.name
  description = "Allow SSH access to NAT instance"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH from anywhere (for PoC, restrict in production)"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
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
