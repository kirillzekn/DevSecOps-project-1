provider "azuread" {
  #features {}
  #subscription_id = var.TF_VAR_AZURE_SUBSCRIPTION_ID
}

provider "azurerm" {
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}