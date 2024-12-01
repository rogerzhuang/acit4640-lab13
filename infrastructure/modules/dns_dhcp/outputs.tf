output "zone_id" {
  description = "ID of the private hosted zone"
  value       = aws_route53_zone.private.id
}

output "dhcp_options_id" {
  description = "ID of the DHCP options set"
  value       = aws_vpc_dhcp_options.main.id
}
