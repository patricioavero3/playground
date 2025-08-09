variable "ami" {
  description = "AMI ID for test instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for test instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for test instance"
  type        = string
}

variable "key_name" {
  description = "Key pair name for test instance"
  type        = string
}

variable "name" {
  description = "Name for test instance"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP"
  type        = bool
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with the test instance"
  type        = list(string)
  default     = []
}
