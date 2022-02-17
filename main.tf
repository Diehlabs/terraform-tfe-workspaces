locals {
  # Combined list of all remote state consumers for data lookup, empty lists are removed.
  all_remote_consumers = flatten([for name, remotes in var.workspace_name_suffixes : remotes])

  # Turn all_remote_consumers in to a map so that lookups are indexed by ws name, instead
  # of an integer for ability to reference lookups by name i.e. 
  # data.tfe_workspace.remote_consumer["my-ws-name"].id
  map_remote_consumer_names = {
    for name in local.all_remote_consumers :
    name => name
  }

}

resource "tfe_workspace" "ws" {
  for_each     = var.workspace_name_suffixes
  name         = each.key
  description  = "${var.description} - Managed by Terraform repo ${var.managed_by}"
  organization = var.tf_org_name
  # tag_names           = var.tag_names
  execution_mode      = var.execution_mode
  terraform_version   = var.tf_version
  global_remote_state = length(each.value) == 0 ? var.global_remote_state : false
  remote_state_consumer_ids = each.value == null ? null : [
    for ws in each.value : data.tfe_workspace.remote_consumer[ws].id
  ]
  lifecycle {
    ignore_changes = [
      execution_mode,
      working_directory
    ]
  }
}

# If a new workspace has no remote consumers, we can't do lookups since the list will be empty.
# The lists are manipulated in locals to ensure we only lookup populated lists,
# and then we only look up each workspace one time to avoid possible duplicate lookups.
data "tfe_workspace" "remote_consumer" {
  for_each     = local.map_remote_consumer_names
  name         = each.key
  organization = var.tf_org_name
}