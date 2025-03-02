variable "resource_group_name" {
  description = "rg-poc-fabric"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "Sweden Central"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "fabric_workspace_name" {
  description = "Microsoft Fabric Workspace Name"
  type        = string
  default     = "MyFabricWorkspace"
}