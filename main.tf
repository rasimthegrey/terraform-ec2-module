provider "aws" {
  region = "eu-north-1" # AWS bölgenizi belirtin
}

module "ec2_instances" {
  source = "./ec2"

  instance_count = var.instance_count
  instance_type  = var.instance_type
  ami_id         = var.ami_id
  key_name       = var.key_name
  security_groups = var.security_groups
}