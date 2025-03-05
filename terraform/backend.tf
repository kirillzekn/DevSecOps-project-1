terraform {
  backend "azurerm" {
    resource_group_name  = var.TF_VAR_TERRAFORM_AZURE_RG_NAME
    storage_account_name = var.TF_VAR_TERRAFORM_AZURE_STORAGE_ACCOUNT_NAME
    container_name       = var.TF_VAR_TERRAFORM_AZURE_STORAGE_CONTAINER_NAME
    key                  = "terraform.tfstate"

  }
}