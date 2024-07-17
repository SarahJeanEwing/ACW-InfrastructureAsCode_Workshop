locals {
    storageAccountNameFull = "${var.storageAccountBase}${var.uniqueIdentifier}"
}

data "azurerm_resource_group" "cm_rg" {
    name = var.resource_group_name
}

resource "random_string" "random" {
  length = 10
  special = false
  lower = true
  upper = false
}

resource "azurerm_storage_account" "iac_stg_acct" {
  account_replication_type = "LRS"
  name = var.storageAccountName
  resource_group_name = data.azurerm_resource_group.cm_rg.name
  account_tier = "Standard"
  location = data.azurerm_resource_group.cm_rg.location
}

resource "azurerm_storage_account" "iac_stg_acct_full" {
  account_replication_type = "LRS"
  name = local.storageAccountNameFull
  resource_group_name = data.azurerm_resource_group.cm_rg.name
  account_tier = "Standard"
  location = data.azurerm_resource_group.cm_rg.location
}
