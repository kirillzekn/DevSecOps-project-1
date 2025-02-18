variable "prefix" {
  type        = string
  description = "A prefix used for all AKS related resources"
  default     = "zekn"

}

variable "aks-role_based_access_control_enabled" {
  type        = bool
  description = "Enable Role Based Access Control for the Kubernetes Cluster"
  default     = true

}