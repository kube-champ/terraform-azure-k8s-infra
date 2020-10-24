resource "azurerm_dns_zone" "public_dns_zone" {
  count = var.public_dns_zone_enabled ? 1 : 0

  name                = var.public_dns_zone
  resource_group_name = azurerm_resource_group.infra_rg.name
}

resource "azurerm_private_dns_zone" "private_dns_zone" {
  count = var.private_dns_zone_enabled ? 1 : 0

  name                = var.private_dns_zone
  resource_group_name = azurerm_resource_group.infra_rg.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "dns_vnet_link" {
  count = var.private_dns_zone_enabled ? 1 : 0

  name                  = "private_dns_vnet_link"
  resource_group_name   = azurerm_resource_group.infra_rg.name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns_zone.0.name
  virtual_network_id    = module.network.vnet_id
}
