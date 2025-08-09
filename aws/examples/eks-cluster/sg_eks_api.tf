resource "aws_security_group" "eks_api" {
  name        = "eks-api-access"
  description = "Allow EKS API access from my IP only"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description = "EKS API access"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
  cidr_blocks = [format("%s/32", chomp(data.http.my_ip.response_body))]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
