provider "aws" {
  region = "eu-north-1" # AWS bölgenizi belirtin
}

module "ec2_instances" {
  source = "./ec2"

  instance_count            = var.instance_count
  instance_type             = var.instance_type
  ami_id                    = var.ami_id
  key_name                  = var.key_name
  user_data                 = var.user_data
  availability_zone         = var.availability_zone
  subnet_id                 = var.subnet_id
  vpc_security_group_ids    = var.vpc_security_group_ids
  associate_public_ip_address = var.associate_public_ip_address
}