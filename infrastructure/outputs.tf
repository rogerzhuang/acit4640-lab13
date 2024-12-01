output "instance_private_ips" {
  description = "Private IPs of all instances"
  value       = module.instances.instances_private_ips
}

output "instance_public_ips" {
  description = "Public IPs of all instances"
  value       = module.instances.instances_public_ips
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "private_zone_id" {
  description = "ID of the private hosted zone"
  value       = module.dns_dhcp.zone_id
}
