output "workspaces" {
  description = "All workspaces created by this module"
  value = {
    for workspace in resource.tfe_workspace.ws : workspace.name => workspace.id
  }
}
