variable "aws_vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

# Public subnets configuration
variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "public_subnet_azs" {
  description = "Availability zones for public subnets"
  type        = list(string)
}

# Private subnets configuration
variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "private_subnet_azs" {
  description = "Availability zones for private subnets"
  type        = list(string)
}

variable "nat_eip_name" {
  description = "The name of the Elastic IP for the NAT Gateway"
  type        = string
}

variable "igw_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "public_rt_name" {
  description = "Name of the public route table"
  type        = string
}

variable "private_rt_name" {
  description = "Name of the private route table"
  type        = string
}

variable "nat_gateway_name" {
  description = "Name of the NAT Gateway"
  type        = string
}
