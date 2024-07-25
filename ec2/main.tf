resource "aws_instance" "this" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = var.security_groups

  tags = {
    Name = "EC2Instance-${count.index}"
  }
}
