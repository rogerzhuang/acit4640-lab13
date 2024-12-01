resource "aws_instance" "instances" {
  for_each = { for idx, instance in var.instances : instance.name => instance }

  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.subnets[each.value.subnet_key]
  key_name      = var.ssh_key_name

  vpc_security_group_ids = [var.security_groups[each.value.sg_key]]

  tags = {
    Name         = each.value.name
    Server_Role  = each.value.role
    Project      = var.project_name
  }
}

resource "aws_route53_record" "instances" {
  for_each = { for idx, instance in var.instances : instance.name => instance }

  zone_id = var.zone_id
  name    = "${each.value.name}.${var.domain_name}"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.instances[each.value.name].private_ip]
}
