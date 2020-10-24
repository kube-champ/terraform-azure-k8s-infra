## Requirements

| Name | Version |
|------|---------|
| azurerm | =2.20.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | =2.20.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| az\_location | The azure location on which the resources will be deployed | `string` | `"North Europe"` | no |
| environment | The environment name on which these resources are deployed | `string` | `"dev"` | no |
| name | A general name that will be used on the resources | `string` | n/a | yes |
| nsg\_rules | A map of NSG rules | `map(map(string))` | `{}` | no |
| nsgs | A list of NSG names | `list(string)` | `[]` | no |
| private\_dns\_zone | A private DNS Zone name | `string` | n/a | yes |
| private\_dns\_zone\_enabled | A flag whether the private DNS zone should be created | `bool` | n/a | yes |
| public\_dns\_zone | A public DNS Zone name | `string` | n/a | yes |
| public\_dns\_zone\_enabled | A flag whether the public DNS zone should be created | `bool` | n/a | yes |
| subnets | A map of subnets | `map(string)` | <pre>{<br>  "main": "10.1.0.0/16"<br>}</pre> | no |
| tags | Additional tags to be attached to the resources | `map(string)` | `{}` | no |
| vnet\_address\_space | The vnet address space | `string` | `"10.0.0.0/8"` | no |

## Outputs

| Name | Description |
|------|-------------|
| environment | n/a |
| nsgs | n/a |
| private\_dns\_zone | n/a |
| public\_dns\_zone | n/a |
| resource\_group\_location | n/a |
| resource\_group\_name | n/a |
| subnets | n/a |
| vnet\_id | n/a |
| vnet\_name | n/a |

