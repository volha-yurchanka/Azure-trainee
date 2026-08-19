output "public_ips" {
  description = "Public IP addresses of EC2 instances"
  value       = { for k, v in aws_instance.main : k => v.public_ip }
}