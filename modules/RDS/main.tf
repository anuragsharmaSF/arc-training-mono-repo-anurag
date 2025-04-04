resource "aws_db_subnet_group" "rds_subnet_group" {
  name        = "${var.namespace}-subnet-group"
  subnet_ids  = var.subnet_ids
  description = "Subnet group for ${var.namespace} RDS instance"
}

resource "aws_security_group" "rds_sg" {
  count       = var.rds_security_group.create ? 1 : 0
  name        = "${var.namespace}-rds-sg"
  vpc_id      = var.vpc_id
  description = var.rds_security_group.description

  dynamic "ingress" {
    for_each = var.rds_security_group.ingress_rules
    content {
      description = ingress.value["description"]
      cidr_blocks = [ingress.value["cidr_block"]]
      from_port   = ingress.value["from_port"]
      to_port     = ingress.value["to_port"]
      protocol    = ingress.value["ip_protocol"]
    }
  }

  dynamic "egress" {
    for_each = var.rds_security_group.egress_rules
    content {
      description = egress.value["description"]
      cidr_blocks = [egress.value["cidr_block"]]
      from_port   = egress.value["from_port"]
      to_port     = egress.value["to_port"]
      protocol    = egress.value["ip_protocol"]
    }
  }
}

resource "aws_db_instance" "rds_instance" {
  identifier             = var.namespace
  engine                 = var.db_engine
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  allocated_storage      = var.db_allocated_storage # Add this line
  username               = var.db_username
  password               = var.db_password
  db_name                = var.db_name
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = var.rds_security_group.create ? [aws_security_group.rds_sg[0].id] : []
  multi_az               = false
  skip_final_snapshot    = true

  tags = {
    Environment = var.environment
    Name        = var.namespace
  }
}
