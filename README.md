# Terraform Azure K8S Infra
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