output "instance_map" {
  description = "Map of all instances"
  value       = aws_instance.instances
}

output "instances_private_ips" {
  description = "Private IPs of all instances"
  value       = { for k, v in aws_instance.instances : k => v.private_ip }
}

output "instances_public_ips" {
  description = "Public IPs of all instances"
  value       = { for k, v in aws_instance.instances : k => v.public_ip }
}
