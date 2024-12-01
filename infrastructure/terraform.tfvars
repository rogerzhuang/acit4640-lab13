region       = "us-west-2"
vpc_cidr     = "10.0.0.0/16"
project_name = "acit4640_lab13"
domain_name  = "lab13.internal"
ssh_key_name = "lab13"
ami_id       = "ami-03839f1dba75bb628"  # Ubuntu 22.04 LTS
instances = [
  {
    name       = "w01"
    role       = "web"
    subnet_key = "public"
    sg_key     = "public"
  },
  {
    name       = "b01"
    role       = "backend"
    subnet_key = "private"
    sg_key     = "private"
  }
]
