terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.0"
    }
  }

  backend "s3" {
    bucket         = "databricks-infra-tf-state-<YOUR_ACCOUNT_ID>"
    key            = "databricks/terraform.tfstate"
    region         = "us-east-1" # Change to your selected deployment region
    dynamodb_table = "databricks-infra-tf-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}
