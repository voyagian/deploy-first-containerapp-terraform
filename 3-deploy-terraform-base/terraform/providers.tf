provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "voyagian-deploy-first-containerapp-rg"
    storage_account_name = "vgiandeployfirstcntersa"
    container_name       = "tfstate"
    key                  = "terraform-base.tfstate"
  }
}

data "azurerm_client_config" "current" {}
