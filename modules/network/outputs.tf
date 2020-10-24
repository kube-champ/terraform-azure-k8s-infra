output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnets" {
  value = {
    for subnet in azurerm_subnet.subnet:
    subnet.name => subnet.id
  }
}

output "nsgs" {
  value = {
    for nsg in azurerm_network_security_group.nsg:
    nsg.name => nsg.id
  }
}