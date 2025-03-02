terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  backend "azurerm" {}  # (Optional) For remote state management
}

provider "azurerm" {
  features {}
}
