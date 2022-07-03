terraform {

  required_version = ">=1.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.7.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "github-actions-tfstate"
    storage_account_name = "tfstatestoragefmebu4"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}