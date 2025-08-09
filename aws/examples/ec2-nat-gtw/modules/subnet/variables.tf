variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "cidr_blocks" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "public" {
  description = "Whether subnet is public"
  type        = bool
}

variable "name" {
  description = "Name prefix for subnets"
  type        = string
}
