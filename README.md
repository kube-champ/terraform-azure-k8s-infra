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
  version = "0.0.1" # <-- change version  
  # insert the 5 required variables here
}
```

## Contributing
See contributing docs [here](./docs/CONTRIBUTING.md)