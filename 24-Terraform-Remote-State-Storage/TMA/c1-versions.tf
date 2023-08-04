# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}
# Terraform State Storage to Azure Storage Container
 backend "azurerm"  {
  resource_group_name = "tma-terraform-storage-rg"
  storage_account_name = "tma-terraformstate2023"
  container_name = "tfstatefiles"
  key = "project-estraus.tfstate"

 }
# Provider Block
provider "azurerm" {
  features {
    
  }
}
