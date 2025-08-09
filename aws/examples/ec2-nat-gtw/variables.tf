variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "poc_name" {
  description = "Name prefix for all resources in this PoC"
  type        = string
  default     = "poc"
}

variable "az_count" {
  description = "Number of availability zones to use"
  type        = number
  default     = 2
}
