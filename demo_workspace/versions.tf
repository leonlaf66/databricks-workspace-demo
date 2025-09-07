terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.11.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "1.88.0"
    }
  }
  required_version = ">= 1.5.7"
}