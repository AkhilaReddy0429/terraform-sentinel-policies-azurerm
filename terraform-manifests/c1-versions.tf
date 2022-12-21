# Terraform Block
terraform {
  required_version = ">= 1.3.4"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.0.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.4.3"
    }   
  }
  # Terraform Backend pointed to TF Cloud
  backend "remote" {
    organization = "hcta-azurerm-demo"
    workspaces {
      name = "sentinal-azure-demo"
    }
  }
}

# Provider Block
provider "azurerm" {
 features {}          
}

# Random String Resource
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  number = false   
}


