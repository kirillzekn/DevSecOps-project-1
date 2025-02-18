provider "azuread" {
  #features {}
  #subscription_id = var.TF_VAR_AZURE_SUBSCRIPTION_ID
}

provider "azurerm" {
  features {}
}

provider "kubernetes" {
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #version = "=4.1.0"
    }
  }
}