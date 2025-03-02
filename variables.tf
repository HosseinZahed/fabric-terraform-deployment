variable "resource_group_name" {
  description = "Resource Group Name"
  default = "rg-poc-fabric"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "Sweden Central"
}

variable "fabric_workspace_name" {
  description = "Microsoft Fabric Workspace Name"
  type        = string
  default     = "MyFabricWorkspace"
}