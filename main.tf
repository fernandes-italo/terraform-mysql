terraform {
  required_version = ">= 0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  features {}
}

resource "azurerm_resource_group" "rg-atividade2" {
  name     = "rg-atividade2"
  location = "eastus"
  tags = {
    "Environment" = "atividade 1"
  }
}