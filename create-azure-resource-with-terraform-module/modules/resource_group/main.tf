resource "azurerm_resource_group" "rg" {
  name = "${var.base_name}-rg"
  location = var.location
  tags = var.tags
}
