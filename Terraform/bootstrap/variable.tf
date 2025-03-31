variable "bucket_name" {
  description = "Name of the bucket."
  type        = string
}
variable "dynamodb_name" {
  description = "Name of the Dynamo DB lock table."
  type        = string
}

variable "region" {
  description = "region name"
  type        = string
}
variable "environment" {
  description = "region name"
  type        = string
}


