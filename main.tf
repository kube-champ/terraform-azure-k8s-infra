provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "infra_rg" {
  name     = "rg-${var.environment}-${var.name}"
  location = var.az_location

  tags = local.common_tags
}

module "network" {
  source = "./modules/network"

  name                = var.name
  resource_group_name = azurerm_resource_group.infra_rg.name
  az_location         = azurerm_resource_group.infra_rg.location
  environment         = var.environment
  address_space       = var.vnet_address_space
  subnets             = var.subnets
  nsgs                = var.nsgs
  nsg_rules           = var.nsg_rules
  tags                = local.common_tags
}
