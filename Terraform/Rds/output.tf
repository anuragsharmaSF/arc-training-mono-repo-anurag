output "vpc_id" {
  description = "The ID of the selected VPC"
  value       = data.aws_vpc.selected.id
}

output "subnet_ids" {
  description = "The list of subnet IDs associated with the VPC"
  value       = data.aws_subnets.public.ids
}
