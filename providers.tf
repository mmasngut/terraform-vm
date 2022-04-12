terraform {

  required_providers {

    azurerm = {

      source = "hashicorp/azurerm"

      version = "3.1.0"

    }

  }

  backend "azurerm" {

    resource_group_name = "tfstate"

    # Paste the storage name generate after creating the blob storgae

    storage_account_name = "tfstate792711839"

    container_name = "tfstate"

    key = "terraform.tfstate"

  }

}



provider "azurerm" {

  # Configuration options
  features {

  }

}