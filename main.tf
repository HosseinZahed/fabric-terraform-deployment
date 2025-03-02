resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azapi_resource" "fabric_workspace" {
  type      = "Microsoft.PowerBI/workspaces@2023-02-01"
  name      = var.fabric_workspace_name
  location  = var.location
  parent_id = "/subscriptions/${var.subscription_id}/resourceGroups/${azurerm_resource_group.rg.name}"

  body = jsonencode({
    properties = {
      description = "Terraform-created Microsoft Fabric Workspace"
      type        = "Workspace"
    }
  })
}