#ec2i



module "ec2_instances" {
  source         = "../../modules/Ec2"
  aws_region     = "ap-south-1"
  instance_count = 2
  ami_id         = "ami-0e35ddab05955cf57"
  instance_type  = "t2.micro"
  subnet_ids     = data.aws_subnets.public.ids
  key_name       = "my-key-pair"
  instance_name  = "my-ec2-instance"
  vpc_id         = data.aws_vpc.selected.id

  security_group_name = "ec2_security_group"

  ingress_rules = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}


