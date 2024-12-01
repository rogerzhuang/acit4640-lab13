provider "aws" {
  region = var.region
}

module "networking" {
  source = "./modules/networking"

  vpc_cidr     = var.vpc_cidr
  region       = var.region
  project_name = var.project_name
}

module "dns_dhcp" {
  source = "./modules/dns_dhcp"

  vpc_id       = module.networking.vpc_id
  domain_name  = var.domain_name
  project_name = var.project_name
}

module "instances" {
  source = "./modules/instances"

  ami_id      = var.ami_id
  project_name = var.project_name
  instances   = var.instances
  subnets     = {
    public  = module.networking.public_subnet_id
    private = module.networking.private_subnet_id
  }
  security_groups = {
    public  = module.networking.public_sg_id
    private = module.networking.private_sg_id
  }
  zone_id      = module.dns_dhcp.zone_id
  domain_name  = var.domain_name
  ssh_key_name = module.ssh_key.ssh_key_name
}

module "ssh_key" {
  source       = "git::https://gitlab.com/acit_4640_library/tf_modules/aws_ssh_key_pair.git"
  ssh_key_name = var.ssh_key_name
  output_dir   = "${path.root}/../app_configuration"
}

module "connect_script" {
  source           = "git::https://gitlab.com/acit_4640_library/tf_modules/aws_ec2_connection_script.git"
  ec2_instances    = module.instances.instance_map
  output_file_path = "${path.root}/../app_configuration/connect_vars.sh"
  ssh_key_file     = module.ssh_key.priv_key_file
  ssh_user_name    = "ubuntu"
}


