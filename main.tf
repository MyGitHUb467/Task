provider "azurerm" {
  features {}
  
}

module "virtual_machine" {
  source              = "./modules/vm"
  resource_group_name = var.resource_group_name
  location            = var.location
  // Add any other variables needed by the VM module
}

module "key_vault" {
  source              = "./modules/keyvault"
  resource_group_name = var.resource_group_name
  location            = var.location
  // Add any other variables needed by the KeyVault module
}

module "storage_account" {
  source              = "./modules/storage_account"
  resource_group_name = var.resource_group_name
  location            = var.location
 
}
