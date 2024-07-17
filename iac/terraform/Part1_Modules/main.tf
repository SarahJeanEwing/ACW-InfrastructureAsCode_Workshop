resource "azurerm_resource_group" "cm_rg" {
  name = var.resourceGroupName
  location = var.location
}

module "stgAcct" {
    source = "./modules"
    resourceGroupName = azurerm_resource_group.cm_rg.name
    location = azurerm_resource_group.cm_rg.location
}