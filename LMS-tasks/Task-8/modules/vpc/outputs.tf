output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of created public subnets"
  value       = [for s in aws_subnet.public : s.id]
}