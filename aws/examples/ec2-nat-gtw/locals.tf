locals {
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = [for i in range(var.az_count) : cidrsubnet(local.vpc_cidr, 8, i)]
  private_subnet_cidrs = [for i in range(var.az_count) : cidrsubnet(local.vpc_cidr, 8, i + var.az_count)]
}
