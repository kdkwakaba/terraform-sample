output "resource_group_name" {
  value = azurerm_resource_group.rg.name
  description = "The resource group name for azure resources."
}

output "location" {
  value = azurerm_resource_group.rg.location
  description = "The location for azure resources"
}

output "tags" {
  value = azurerm_resource_group.rg.tags
  description = "The tags for azure resources."
}
