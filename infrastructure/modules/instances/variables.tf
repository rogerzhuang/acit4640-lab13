variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
}

variable "instances" {
  description = "List of instances to create"
  type = list(object({
    name       = string
    role       = string
    subnet_key = string
    sg_key     = string
  }))
}

variable "subnets" {
  description = "Map of subnet IDs"
  type = object({
    public  = string
    private = string
  })
}

variable "security_groups" {
  description = "Map of security group IDs"
  type = object({
    public  = string
    private = string
  })
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
