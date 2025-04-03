terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.25.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "a92ee373-1fdf-4e72-969b-ce56aa9bffc0"
  features {}
}
