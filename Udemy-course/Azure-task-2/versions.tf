terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-volha.yurchanka"
    storage_account_name = "terraformtest8362"
    container_name       = "tfstate"
    key                  = "observability-dev"
  }
}

provider "azurerm" {
  features {}
}