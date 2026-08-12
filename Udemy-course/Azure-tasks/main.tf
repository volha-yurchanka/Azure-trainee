data "azurerm_resource_group" "main" {
  name = "rg-volha.yurchanka"
}

resource "random_string" "suffix" {
  length = 10
  upper = false
  special = false
}

resource "azurerm_storage_account" "example" {
  name                     = "st${random_string.suffix.result}"
  resource_group_name      = data.azurerm_resource_group.main.name
  location                 = "westus3"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "content"
  storage_account_id    = azurerm_storage_account.example.id
  container_access_type = "private"
}