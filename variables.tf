variable "databricks_account_id" {
  description = "Databricks account ID from https://accounts.cloud.databricks.com/."
  type        = string
}

variable "workspace_name" {
  description = "Name of the Databricks workspace to create."
  type        = string
}

variable "aws_region" {
  description = "AWS region for the Databricks workspace."
  type        = string
  default     = "us-east-1"
}
