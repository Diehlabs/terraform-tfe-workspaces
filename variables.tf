variable "workspace_name_prefix" {
  description = "Prefix for workspace names, usually a repo or other name common to all workspaces."
  type        = string
}

variable "workspaces" {
  description = "Suffix portion of managed workspace names and workspaces to be granted access to remote state on each managed workspace. See examples for more detail."
  # type = map(object({
  #   suffix                    = string
  #   remote_state_workspaces = list(string)
  # }))
  type = map(any)
}

variable "managed_by" {
  description = "The name of the repo managing this configuration"
  type        = string
}

variable "execution_mode" {
  description = "Local or remote exection mode"
  type        = string
  default     = "local"
}

variable "description" {
  description = "The description of the workpaces"
  type        = string
}

#
#  Not using this for now, will need to be provided inside the workspace_names var
#   which will change the module logic.
#
# variable "tag_names" {
#   type = list(string)
# }

variable "tf_version" {
  description = "The Terraform version that these workspaces should use"
  default     = "1.1.5"
}

variable "global_remote_state" {
  description = "Allow any workspace to access the state of these workspaces"
  default     = false
}

variable "tf_org_name" {
  description = "The TFE/TFC org name"
  type        = string
}

variable "working_directory" {
  description = "Directory to  run Terraform from"
  type        = string
  default     = "/"
}
