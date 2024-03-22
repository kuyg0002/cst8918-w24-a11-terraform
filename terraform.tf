terraform {
  required_version = ">= 0.13"
  backend "azurerm" {
    resource_group_name  = "kuyg0002-Default-WestUS3-rg"
    storage_account_name = "kuyg0002tfstorage"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
}