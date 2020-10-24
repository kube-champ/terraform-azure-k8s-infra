output "environment" {
  value = var.environment
}

output "resource_group_name" {
  value = azurerm_resource_group.infra_rg.name
}

output "resource_group_location" {
  value = azurerm_resource_group.infra_rg.location
}

output "public_dns_zone" {
  value = var.public_dns_zone_enabled ? azurerm_dns_zone.public_dns_zone.0.name : "NOT ENABLED"
}

output "private_dns_zone" {
  value = var.private_dns_zone_enabled ? azurerm_private_dns_zone.private_dns_zone.0.name : "NOT ENABLED"
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "subnets" {
  value = module.network.subnets
}

output "nsgs" {
  value = module.network.nsgs
}