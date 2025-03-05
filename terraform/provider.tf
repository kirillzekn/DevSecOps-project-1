provider "azuread" {
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
    }
  }
}