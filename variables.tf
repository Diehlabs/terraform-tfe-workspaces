variable "workspace_name_prefix" {
  description = "Prefix for workspace names, usually a repo or other name common to all workspaces."
}

variable "workspace_name_suffixes" {
  #   type = map(any)
  # type = list(map({
  #     name = string
  #     remote_state_workspaces = list(string)
  # }))
}

variable "managed_by" {
  type = string
}

variable "execution_mode" {
  type    = string
  default = "local"
}

variable "description" {
  type = string
}

#
#  Not using this for now, will need to be provided inside the workspace_name_suffixes var 
#   which will change the module logic.
#
# variable "tag_names" {
#   type = list(string)
# }

variable "tf_version" {
  default = "1.1.5"
}

variable "global_remote_state" {
  default = false
}

variable "remote_state_workspaces" {
  type    = list(string)
  default = []
}

variable "tf_org_name" {
  type = string
}