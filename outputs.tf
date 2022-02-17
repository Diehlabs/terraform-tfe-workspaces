output "workspaces" {
  description = "Map containing the namess and ids of all workspaces created by this module"
  value = {
    for workspace in resource.tfe_workspace.ws : workspace.name => workspace.id
  }
}
