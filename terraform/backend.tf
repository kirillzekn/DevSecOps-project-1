terraform {
    backend "azurerm" {
        resource_group_name   = "rg-terraform-state"
        storage_account_name  = "tfstate$DATE"
        container_name        = "tfstate"
        key                   = "terraform.tfstate"
        tenant_id = "value"
        subscription_id = "value"
    }
}