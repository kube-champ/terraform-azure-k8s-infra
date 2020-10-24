resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-${var.environment}-${var.name}"
  address_space       = [var.address_space]
  resource_group_name = var.resource_group_name
  location            = var.az_location

  ###########################################################
  # We need the lifecycle because other subnets might be
  # created by a different resource, which will fail to 
  # destroy
  ###########################################################
  lifecycle {
    ignore_changes = [
      subnet
    ]
  }

  tags = var.tags
}