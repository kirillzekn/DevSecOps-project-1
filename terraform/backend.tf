terraform {
  backend "azurerm" {}
}

data "terraform_remote_state" "state" {
  backend = "azurerm"
  config = {
    resource_group_name  = var.TERRAFORM_AZURE_RG_NAME
    storage_account_name = var.TERRAFORM_AZURE_STORAGE_ACCOUNT_NAME
    container_name       = var.TERRAFORM_AZURE_STORAGE_CONTAINER_NAME
    location             = var.AZURE_DEFAULT_REGION
    key                  = "terraform.tfstate"
  }
}