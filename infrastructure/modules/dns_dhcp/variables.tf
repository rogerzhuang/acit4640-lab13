variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "domain_name" {
  description = "Domain name for internal DNS"
  type        = string
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
}
