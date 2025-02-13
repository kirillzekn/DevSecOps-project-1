terraform {
    backend "azurerm" {
        resource_group_name   = "rg-terraform-state"
        storage_account_name  = "tfstate02132025"
        container_name        = "tfstate"
        key                   = "terraform.tfstate"
        tenant_id = var.TF_VAR_AZURE_TENANT_ID
        subscription_id = var.TF_VAR_AZURE_SUBSCRIPTION_ID 
    }
}