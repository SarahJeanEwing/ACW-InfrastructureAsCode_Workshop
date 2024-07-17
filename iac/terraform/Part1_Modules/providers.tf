terraform {
    required_version = ">=1.6.6"

    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "~>3.0"
      }
      random = {
        source = "hashicorp/random"
        version = "3.6.2"
      }
    }
  backend "azurerm" {
    
    resource_group_name = "iac-training-rg-necode"
    storage_account_name = "iacstgacct20240717sje"
    container_name = "sarahewing"
    key = "terraform.tfstate"
    use_oidc = true
  }
}

provider "azurerm" {
    features {
      
    }
    skip_provider_registration = "true"
}