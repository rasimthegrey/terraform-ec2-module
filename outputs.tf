output "instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = module.ec2_instances.instance_ids
}

output "public_ips" {
  description = "Public IPs of the created EC2 instances"
  value       = module.ec2_instances.public_ips
}