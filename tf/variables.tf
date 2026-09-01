variable "aws_region" {
  type    = string
  default = "us-west-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/23"
}

variable "databricks_account_id" {
  type        = string
  description = "Your global Databricks Account ID (from ://databricks.com)"
}
