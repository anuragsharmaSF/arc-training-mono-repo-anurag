variable "environment" {
  type        = string
  description = "Environment name"
}

variable "namespace" {
  type        = string
  description = "Namespace for RDS resources"
}

variable "db_name" {
  type        = string
  description = "Database name"
}

variable "db_engine" {
  type        = string
  description = "Database engine (e.g., postgres, mysql)"
}

variable "db_engine_version" {
  type        = string
  description = "Database engine version"
}

variable "db_instance_class" {
  type        = string
  description = "RDS instance type"
}

variable "db_username" {
  type        = string
  description = "Database username"
}

variable "db_password" {
  type        = string
  description = "Database password"
  default     = null
}

variable "manage_user_password" {
  type        = bool
  description = "Whether to manage user password via Secrets Manager"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnets for RDS deployment"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for RDS"
}

variable "rds_security_group" {
  type = object({
    create        = bool
    description   = string
    ingress_rules = list(map(string))
    egress_rules  = list(map(string))
  })
  description = "Security group settings for RDS"
}

variable "db_allocated_storage" {
  description = "The allocated storage size for the RDS instance (in GB)"
  type        = number
  default     = 20 # Set a default value (e.g., 20GB)
}
