variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}


variable "instance_count" {
  type        = number
  description = "Number of EC2 instances to create"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instances"
}

variable "instance_type" {
  type        = string
  description = "Instance type for EC2 instances"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs where EC2 instances will be launched"
}

variable "key_name" {
  type        = string
  description = "SSH key name for EC2 instances"
}

variable "instance_name" {
  type        = string
  description = "Base name for the EC2 instances"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID where the security group will be created"
}

variable "security_group_name" {
  type        = string
  description = "Name of the security group"
}

variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of ingress rules for the security group"
}

variable "egress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  description = "List of egress rules for the security group"
}
