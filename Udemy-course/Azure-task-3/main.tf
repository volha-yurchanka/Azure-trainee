data "azurerm_client_config" "current" {

}

data "azurerm_resource_group" "main" {
  name = "rg-volha.yurchanka"
}
resource "random_string" "keyvault_suffix" {
  length  = 6
  special = false
  upper   = false
}
data "azurerm_client_config" "current" {

}
resource "azurerm_key_vault" "main" {
  name                        = "kv-${var.application_name}-${var.environment_name}-${random_string.keyvault_suffix.result}"
  location                    = var.primary_location
  resource_group_name         = data.azurerm_resource_group.main.name
  rbac_authorization_enabled  = false
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"
}