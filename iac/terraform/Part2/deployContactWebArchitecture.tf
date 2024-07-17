resource "azurerm_resource_group" "rg-contact-web-application" {
  name = var.resourceGroupName
  location = var.location
}