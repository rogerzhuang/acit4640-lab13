variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "public_subnet_id" {
  description = "ID of the public subnet"
  type        = string
}

variable "private_subnet_id" {
  description = "ID of the private subnet"
  type        = string
}

variable "public_sg_id" {
  description = "ID of the public security group"
  type        = string
}

variable "private_sg_id" {
  description = "ID of the private security group"
  type        = string
}

variable "zone_id" {
  description = "ID of the private hosted zone"
  type        = string
}

variable "domain_name" {
  description = "Domain name for internal DNS"
  type        = string
}

variable "ssh_key_name" {
  description = "Name of the SSH key pair"
  type        = string
}
