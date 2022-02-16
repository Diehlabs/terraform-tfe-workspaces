module "workspaces" {
  source                = "../.."
  workspace_name_prefix = "terraform-infra"
  description           = "Infra resources"
  managed_by            = "my-test-repo"
  environments = {
    prod    = ["terraform-github-mgmt"],
    nonprod = [],
    poc     = []
  }
  tf_org_name = "Diehlabs"
}
