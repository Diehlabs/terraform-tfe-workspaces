module "workspaces" {
  source                = "../.."
  description           = "Infra resources"
  managed_by            = "my-test-repo"
  workspace_name_prefix = "terraform-infra"
  workspaces = {
    prod    = ["terraform-github-mgmt"],
    nonprod = [],
    poc     = []
  }
  tf_org_name = "Diehlabs"
}
