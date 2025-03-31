#RDS

module "rds" {
  source = "../../modules/RDS"
  # Directly passing values without using variables.tf
  environment          = "dev"
  namespace            = "mydb"
  db_name              = "testdatabase"
  db_engine            = "postgres"
  db_engine_version    = "16"
  db_instance_class    = "db.t3.micro"
  db_allocated_storage = 20
  db_username          = "dbadmin"
  db_password          = "dbpassword" # You can define a value here if needed
  manage_user_password = true
  vpc_id               = data.aws_vpc.selected.id
  subnet_ids           = data.aws_subnets.public.ids
  rds_security_group = {
    create      = true
    description = "Security group for RDS instance"
    ingress_rules = [
      {
        description = "Allow PostgreSQL from VPC"
        cidr_block  = "10.0.0.0/16" # Ensure this matches your VPC CIDR
        from_port   = 5432
        to_port     = 5432
        ip_protocol = "tcp"
      }
    ]
    egress_rules = [
      {
        description = "Allow all outbound traffic"
        cidr_block  = "0.0.0.0/0"
        from_port   = 0
        to_port     = 0
        ip_protocol = "-1" # -1 allows all protocols; consider restricting if possible
      }
    ]
  }
}
