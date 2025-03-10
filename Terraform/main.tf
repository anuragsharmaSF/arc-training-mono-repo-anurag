
provider "aws" {
  region = var.region 
}

module "vpc" {
  source = "./Examples/vpc"

  aws_vpc_cidr        = "10.0.0.0/16"
  vpc_name            = "my_vpc"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  public_subnet_az    = "us-east-1a"
  private_subnet_az   = "us-east-1b"
  public_subnet_name  = "public_subnet"
  private_subnet_name = "private_subnet"
  igw_name            = "internet_gateway"
  public_rt_name      = "public_route_table"
  nat_gateway_name    = "nat_gateway"
  private_rt_name     = "private_route_table"
}
