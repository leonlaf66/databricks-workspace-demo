locals {
  databricks_account_id = "fdb4196f-c790-47b0-8e7f-0fde5097dbd5"
  common_tags = {
    Owner       = "data-platform-team"
    Environment = "development"
    Project     = "DatabricksDemo"
  }
}

module "demo_workspace" {
  source = "git::https://github.com/leonlaf66/databricks_workspace_tf_module.git?ref=init"
  databricks_account_id = local.databricks_account_id
  workspace_name        = "demo-workspace"
  aws_region            = "us-east-1"
  common_tags           = local.common_tags
  create_metastore      = true
  metastore_owner       = "Admins"
  subnet_cidrs          = ["172.31.1.0/24", "172.31.2.0/24", "172.31.3.0/24"]
}