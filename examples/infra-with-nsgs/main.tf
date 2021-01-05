provider "azurerm" {
  features {}
}

module "k8s-infra" {
  source = "kube-champ/k8s-infra/azure"

  name = "test-infra"

  public_dns_zone_enabled = true
  public_dns_zone         = "example.com"

  private_dns_zone_enabled = true
  private_dns_zone         = "example.internal"

  vnet_address_space = "10.0.0.0/16"
  subnets = {
    snet1 = "10.0.0.0/19"
    snet2 = "10.0.32.0/19"
    snet3 = "10.0.64.0/19"
  }

  nsgs = ["snet1"]
  nsg_rules = {
    "https" = {
      subnet                     = "snet1"
      priority                   = 501
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_address_prefix      = "*"
      source_port_range          = "*"
      destination_address_prefix = "*"
      destination_port_range     = "*"
    }

    "ssh" = {
      subnet                     = "snet1"
      priority                   = 502
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_address_prefix      = "*"
      source_port_range          = "*"
      destination_address_prefix = "*"
      destination_port_range     = "*"
    }
  }
}