provider "azurerm" {
  features {}
  
}
data "azurerm_client_config" "current" {} 
resource "azurerm_key_vault" "keyvault" {
  name                        = "keyvault"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
}
