output "vpc_id" {
  value = module.vpc.id
}

# You may need to add outputs in the subnet and ec2 modules for these to work:
# output "id" { value = aws_subnet.this[*].id }
# output "id" { value = aws_instance.this.id }

output "public_subnet_ids" {
  value = module.public_subnets.id
}

output "private_subnet_ids" {
  value = module.private_subnets.id
}

output "nat_instance_id" {
  value = module.ec2_nat.id
}

output "test_instance_id" {
  value = module.ec2_test.id
}

output "nat_public_ip" {
  description = "Public IP address of the NAT (gateway) instance"
  value       = module.ec2_nat.public_ip
}
