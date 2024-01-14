terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "tfstatedemorg"
      storage_account_name = "tfstatedemost"
      container_name       = "tfstate"
      key                  = "rg/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "tfstatedemo" {
  name     = "testrg"
  location = "Japan East"
}