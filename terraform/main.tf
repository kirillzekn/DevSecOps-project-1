resource "azurerm_resource_group" "aks" {
  name     = "zekn_aks_rg"
  location = "West Europe"

}

module "aks" {
  source  = "Azure/aks/azurerm"
  version = "9.4.1"
  # insert the 1 required variable here
  resource_group_name = azurerm_resource_group.aks.name
  sku_tier            = "Free"
  depends_on          = [azurerm_resource_group.aks]
  prefix = var.prefix
}