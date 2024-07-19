terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "TerraformRG"
    storage_account_name = "neehastorage"
    container_name       = "neehacontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}