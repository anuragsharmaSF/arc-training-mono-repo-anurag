module "vpc_network" {
  source = "../modules/vpc"

  aws_vpc_cidr         = "10.0.0.0/16"
  vpc_name             = "my-vpc"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnet_azs    = ["us-west-2a", "us-west-2b"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  private_subnet_azs   = ["us-west-2a", "us-west-2b"]
  igw_name             = "my-igw"
  nat_eip_name         = "Nat-eip"
  public_rt_name       = "my-public-rt"
  private_rt_name      = "my-private-rt"
  nat_gateway_name     = "my-nat-gateway"
}


