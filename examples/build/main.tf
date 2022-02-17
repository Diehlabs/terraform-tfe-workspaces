module "workspaces" {
  source                = "../.."
  workspace_name_prefix = "terraform-infra"
  description           = "Infra resources"
  managed_by            = "my-test-repo"
  workspace_name_suffixes = {
    prod    = ["terraform-github-mgmt"],
    nonprod = [],
    poc     = []
  }
  tf_org_name = "Diehlabs"
}
