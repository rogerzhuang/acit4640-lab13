resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id
  key_name      = var.ssh_key_name

  vpc_security_group_ids = [var.public_sg_id]

  tags = {
    Name         = "w01"
    Server_Role  = "web"
    Project      = var.project_name
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet_id
  key_name      = var.ssh_key_name

  vpc_security_group_ids = [var.private_sg_id]

  tags = {
    Name         = "b01"
    Server_Role  = "backend"
    Project      = var.project_name
  }
}

resource "aws_route53_record" "web" {
  zone_id = var.zone_id
  name    = "w01.${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.private_ip]
}

resource "aws_route53_record" "backend" {
  zone_id = var.zone_id
  name    = "b01.${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.backend.private_ip]
}
