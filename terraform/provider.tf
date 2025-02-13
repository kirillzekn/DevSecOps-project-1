provider "azuread" {
  #features {}
  client_id       = var.TF_VAR_AZURE_CLIENT_ID
  client_secret   = var.TF_VAR_AZURE_CLIENT_SECRET
  tenant_id       = var.TF_VAR_AZURE_TENANT_ID
  #subscription_id = var.TF_VAR_AZURE_SUBSCRIPTION_ID
}

terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "=4.1.0"
        }
    }
}