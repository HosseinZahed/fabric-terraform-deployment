resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Simple Workspace
resource "fabric_workspace" "fabric_ws" {
  display_name = var.fabric_workspace_name
  resource_group_name = azurerm_resource_group.rg.name
  location     = var.location
  description  = "Example Workspace 1"  
}