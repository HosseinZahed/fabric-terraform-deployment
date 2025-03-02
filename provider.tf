terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {    
    resource_group_name  = "rg-temp"
    storage_account_name = "stterraformfabricpoc"
    container_name       = "tfstate"
    key                  = "terraform.tfstate" 
  }
}

provider "azurerm" {
  features {}
}
