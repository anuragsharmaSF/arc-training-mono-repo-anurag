data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = ["my-vpc"] # Replace "my-vpc" with the actual VPC name
  }
}

# Fetch subnets associated with the VPC
data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }

  filter {
    name   = "tag:Name"
    values = ["private_subnet-*"] # Match all subnets with "public_subnet-" prefix
  }
}
