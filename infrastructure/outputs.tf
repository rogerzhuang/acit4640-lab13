output "web_public_ip" {
  description = "Public IP of the web server"
  value       = module.instances.web_public_ip
}

output "web_private_ip" {
  description = "Private IP of the web server"
  value       = module.instances.web_private_ip
}

output "backend_private_ip" {
  description = "Private IP of the backend server"
  value       = module.instances.backend_private_ip
}

output "vpc_id" {
  description = "ID of the VPC"
  value       = module.networking.vpc_id
}

output "private_zone_id" {
  description = "ID of the private hosted zone"
  value       = module.dns_dhcp.zone_id
}
