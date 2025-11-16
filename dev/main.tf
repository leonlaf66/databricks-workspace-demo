locals {
  common_tags = {
    Owner       = "data-platform-team"
    Environment = "development"
    Project     = "DatabricksDemo"
  }
}

module "demo_workspace" {
  providers = {
    databricks = databricks.accounts
  }
  source = "git::https://github.com/leonlaf66/databricks_workspace_tf_module.git?ref=init"
  databricks_account_id = var.databricks_account_id
  workspace_name        = "dbx-demo"
  aws_region            = "us-east-1"
  common_tags           = local.common_tags
  create_metastore      = true
  metastore_owner       = "Admins"
  subnet_cidrs          = ["172.31.96.0/24", "172.31.97.0/24", "172.31.98.0/24"]
}