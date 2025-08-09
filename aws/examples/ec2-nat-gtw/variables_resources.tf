variable "nat_ami" {
  description = "AMI ID for NAT instance (Amazon Linux 2 Free Tier eligible)"
  type        = string
  default     = "ami-0c02fb55956c7d316" # us-east-1 Amazon Linux 2
}

variable "nat_instance_type" {
  description = "Instance type for NAT instance (Free Tier eligible)"
  type        = string
  default     = "t2.micro"
}

variable "test_ami" {
  description = "AMI ID for test instance (Amazon Linux 2 Free Tier eligible)"
  type        = string
  default     = "ami-0c02fb55956c7d316" # us-east-1 Amazon Linux 2
}

variable "test_instance_type" {
  description = "Instance type for test instance (Free Tier eligible)"
  type        = string
  default     = "t2.micro"
}
