variable "prefix" {
  type        = string
  description = "A prefix used for all AKS related resources"
  default     = "zekn"

}

variable "aks-role_based_access_control_enabled" {
  type        = bool
  description = "Enable Role Based Access Control for the Kubernetes Cluster"
  default     = false

}

variable "aks-rbac_aad" {
  type        = bool
  description = "Enable Azure Active Directory for the Kubernetes Cluster"
  default     = false

}

variable "aks-log_analytics_workspace_daily_quota_gb" {
  type        = number
  description = "The daily quota for the Log Analytics workspace in GB"
  default     = 0.1

}

variable "aks-agents_size" {
  type        = string
  description = "The size of the agents"
  default     = "Standard_B2ms"

}

variable "aks-identity_type" {
  type        = string
  description = "The type of identity used for the Kubernetes Cluster"
  default     = "SystemAssigned"

}

variable "TERRAFORM_AZURE_RG_NAME" {
  type        = string
  description = "The name of the resource group to deploy the AKS cluster"

}

variable "TERRAFORM_AZURE_STORAGE_ACCOUNT_NAME" {
  type        = string
  description = "The name of the storage account to store the Terraform state file"

}

variable "TERRAFORM_AZURE_STORAGE_CONTAINER_NAME" {
  type        = string
  description = "The name of the storage container to store the Terraform state file"

}
