variable "ami" {
  description = "AMI ID for NAT instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for NAT instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for NAT instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for NAT instance"
  type        = string
}

variable "name" {
  description = "Name for NAT instance"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the NAT instance"
  type        = list(string)
  default     = []
}
