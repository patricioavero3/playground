output "id" {
  value = [for s in aws_subnet.this : s.id]
}
