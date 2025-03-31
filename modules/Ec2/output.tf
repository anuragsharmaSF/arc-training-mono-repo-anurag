output "security_group_id" {
  value       = aws_security_group.ec2_sg.id
  description = "ID of the created security group"
}

output "ec2_instance_ids" {
  value       = aws_instance.ec2[*].id
  description = "IDs of the created EC2 instances"
}

output "ec2_public_ips" {
  value       = aws_instance.ec2[*].public_ip
  description = "Public IP addresses of the EC2 instances"
}

