resource "azurerm_network_security_group" "nsg" {
  for_each = toset(var.nsgs)

  name                = "nsg-${var.environment}-${each.key}"
  resource_group_name = var.resource_group_name
  location            = var.az_location
}

resource "azurerm_network_security_rule" "nsg_rule" {
  for_each = var.nsg_rules

  name                        = each.key
  priority                    = each.value.priority
  direction                   = each.value.direction
  access                      = each.value.access
  protocol                    = each.value.protocol
  source_address_prefix       = each.value.source_address_prefix
  source_port_range           = each.value.source_port_range
  destination_address_prefix  = each.value.destination_address_prefix
  destination_port_range      = each.value.destination_port_range
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg[each.value.subnet].name
}

resource "azurerm_subnet_network_security_group_association" "nsg_subnet_association" {
  for_each = toset(var.nsgs)

  subnet_id                 = azurerm_subnet.subnet[each.key].id
  network_security_group_id = azurerm_network_security_group.nsg[each.key].id
}
