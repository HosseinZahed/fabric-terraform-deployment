terraform {
  required_version = ">= 1.8, < 2.0"
  required_providers {    
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    } 
    fabric = {
      source  = "microsoft/fabric"
      version = "0.1.0-beta.10"
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

provider "fabric" {
  # Configuration options
}
