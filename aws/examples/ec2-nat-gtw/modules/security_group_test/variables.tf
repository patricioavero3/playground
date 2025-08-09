variable "name" {
  description = "Name for the security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "nat_sg_id" {
  description = "Security group ID of the NAT instance"
  type        = string
}
