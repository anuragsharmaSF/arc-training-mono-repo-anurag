variable "aws_vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "public_subnet_az" {
  description = "Availability zone for the public subnet"
  type        = string
}

variable "private_subnet_az" {
  description = "Availability zone for the private subnet"
  type        = string
}

variable "public_subnet_name" {
  description = "Name for the public subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "Name for the private subnet"
  type        = string
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "public_rt_name" {
  description = "Name for the public route table"
  type        = string
}

variable "nat_gateway_name" {
  description = "Name for the NAT Gateway"
  type        = string
}

variable "private_rt_name" {
  description = "Name for the private route table"
  type        = string
}
