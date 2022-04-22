resource "azurerm_resource_group" "a2_rg" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}
