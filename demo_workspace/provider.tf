provider "aws" {
  region = "us-east-1"
}

provider "databricks" {
  alias = "accounts"
  host       = "https://accounts.cloud.databricks.com"
  account_id = local.databricks_account_id
  client_id     = "761ba1d6-9efd-44a0-8c4f-518eaa65b604"
  client_secret = "dose2429269b55143b28819c1bd2e392068d"
}