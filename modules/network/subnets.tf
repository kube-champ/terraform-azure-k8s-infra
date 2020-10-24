resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets

  name                 = "snet-${var.environment}-${each.key}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes       = [each.value]
}
