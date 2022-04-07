terraform {
 required_version = ">= 0.13"
    
 required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "aula_infra"
  location = "brazilsouth"

  tags = {
    Environment = "Terraform Getting Started"
    Team        = "wgsilva"
  }
}