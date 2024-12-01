variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
  default     = "acit4640_lab13"
}

variable "domain_name" {
  description = "Internal DNS domain name"
  type        = string
  default     = "lab13.internal"
}

variable "ssh_key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "lab13"
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-03839f1dba75bb628"  # Ubuntu 22.04 LTS
}
