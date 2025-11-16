provider "aws" {
  region = "us-east-1"
}

provider "databricks" {
  alias = "accounts"
  host       = "https://accounts.cloud.databricks.com"
  account_id = var.databricks_account_id
}