# terraform-<provider>-<module name>

This repo will be used as a template for new Terraform module Github repos.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.28.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.28.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.ws](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.remote_consumer](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/workspace) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the workpaces | `string` | n/a | yes |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Local or remote exection mode | `string` | `"local"` | no |
| <a name="input_global_remote_state"></a> [global\_remote\_state](#input\_global\_remote\_state) | Allow any workspace to access the state of these workspaces | `bool` | `false` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | The name of the repo managing this configuration | `string` | n/a | yes |
| <a name="input_tf_org_name"></a> [tf\_org\_name](#input\_tf\_org\_name) | The TFE/TFC org name | `string` | n/a | yes |
| <a name="input_tf_version"></a> [tf\_version](#input\_tf\_version) | The Terraform version that these workspaces should use | `string` | `"1.1.5"` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | Directory to  run Terraform from | `string` | `"/"` | no |
| <a name="input_workspace_name_prefix"></a> [workspace\_name\_prefix](#input\_workspace\_name\_prefix) | Prefix for workspace names, usually a repo or other name common to all workspaces. | `string` | n/a | yes |
| <a name="input_workspaces"></a> [workspaces](#input\_workspaces) | Suffix portion of managed workspace names and workspaces to be granted access to remote state on each managed workspace. See examples for more detail. | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_workspaces"></a> [workspaces](#output\_workspaces) | Map containing the namess and ids of all workspaces created by this module |
<!-- END_TF_DOCS -->
