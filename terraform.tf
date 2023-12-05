terraform {
  cloud {
    organization = "tf_cloud-demo"

    workspaces {
      name = "test-workspace-2"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.83.0"
    }
  }
}
