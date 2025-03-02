terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {    
    resource_group_name  = "rg-temp"
    storage_account_name = "stterraformfabricpoc "
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    subscription_id      = "37b62c00-a726-4a50-b593-04b93728d5f6"
  }
}

provider "azurerm" {
  features {}
}
