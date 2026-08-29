provider "databricks" {
  alias = "mws"
  host  = "https://accounts.cloud.databricks.com"
}

resource "databricks_mws_workspaces" "this" {
  provider       = databricks.mws
  account_id     = var.databricks_account_id
  workspace_name = var.workspace_name
  aws_region     = var.aws_region
  compute_mode   = "SERVERLESS"
}
