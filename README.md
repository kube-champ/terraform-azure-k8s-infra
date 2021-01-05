# Terraform Azure K8S Infra
[![CircleCI](https://circleci.com/gh/kube-champ/terraform-azure-k8s-infra/tree/master.svg?style=shield)](https://circleci.com/gh/kube-champ/terraform-azure-k8s-infra/tree/master) [![MIT License](https://img.shields.io/apm/l/atomic-design-ui.svg?)](https://github.com/tterb/atomic-design-ui/blob/master/LICENSEs) [![GitHub Release](https://img.shields.io/github/release/kube-champ/terraform-azure-k8s-infra.svg?style=flat)]() [![PR's Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat)](http://makeapullrequest.com)

This is a terraform module which contains the infrastructure needed when setting up Kubernetes clusters on Azure (AKS)
## Module Info
Check the module documentation [here](https://registry.terraform.io/modules/kube-champ/k8s-infra/azure/latest)

The naming convention of the resources are based on the [Azure Naming Convention](https://docs.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/naming-and-tagging)

## Usage

```terraform
module "k8s-infra" {
  source  = "kube-champ/k8s-infra/azure"
  ...
}
```

## Contributing
See contributing docs [here](./docs/CONTRIBUTING.md)## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| az\_location | The azure location on which the resources will be deployed | `string` | `"West Europe"` | no |
| environment | The environment name on which these resources are deployed | `string` | `"dev"` | no |
| name | A general name that will be used on the resources | `string` | n/a | yes |
| nsg\_rules | A map of NSG rules | `map(map(string))` | `{}` | no |
| nsgs | A list of NSG names | `list(string)` | `[]` | no |
| private\_dns\_zone | A private DNS Zone name | `string` | `""` | no |
| private\_dns\_zone\_enabled | A flag whether the private DNS zone should be created | `bool` | `false` | no |
| public\_dns\_zone | A public DNS Zone name | `string` | `""` | no |
| public\_dns\_zone\_enabled | A flag whether the public DNS zone should be created | `bool` | `false` | no |
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

