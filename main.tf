provider "azurerm" {
  features {
  }
  subscription_id = var.ARM_SUBSCRIPTION_ID
  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID
}

resource "azurerm_resource_group" "tf_rg" {
  name     = var.rg_name
  location = var.rg_location
}

resource "azurerm_virtual_network" "tf_vnet" {
  name                = var.vnet_name
  location            = azurerm_resource_group.tf_rg.location
  resource_group_name = azurerm_resource_group.tf_rg.name
  address_space       = var.vnet_address_space
}