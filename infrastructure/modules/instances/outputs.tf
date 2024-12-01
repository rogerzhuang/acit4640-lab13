output "web_instance_id" {
  description = "ID of the web server instance"
  value       = aws_instance.web.id
}

output "backend_instance_id" {
  description = "ID of the backend server instance"
  value       = aws_instance.backend.id
}

output "web_public_ip" {
  description = "Public IP of the web server"
  value       = aws_instance.web.public_ip
}

output "web_private_ip" {
  description = "Private IP of the web server"
  value       = aws_instance.web.private_ip
}

output "backend_private_ip" {
  description = "Private IP of the backend server"
  value       = aws_instance.backend.private_ip
}

output "web_instance" {
  description = "Web server instance object"
  value       = aws_instance.web
}

output "backend_instance" {
  description = "Backend server instance object"
  value       = aws_instance.backend
}
