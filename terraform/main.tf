resource "azurerm_resource_group" "aks" {
  name     = var.AKS_RG_NAME
  location = var.AZURE_DEFAULT_REGION

}

module "aks" {
  source  = "Azure/aks/azurerm"
  version = "9.4.1"
  # insert the 1 required variable here
  resource_group_name                    = azurerm_resource_group.aks.name
  sku_tier                               = "Free"
  depends_on                             = [azurerm_resource_group.aks]
  prefix                                 = var.prefix
  role_based_access_control_enabled      = var.aks-role_based_access_control_enabled
  identity_type                          = var.aks-identity_type
  log_analytics_workspace_daily_quota_gb = var.aks-log_analytics_workspace_daily_quota_gb
  agents_size                            = var.aks-agents_size
  rbac_aad                               = var.aks-rbac_aad
}