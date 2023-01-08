# Configure the AWS Provider
provider "aws" {
  region     = "eu-central-1"
  access_key = "YOUR KEY)"
  secret_key = "YOUR SECRET)"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "YOUR SUB)"
  client_id       = "YOUR CLIENT ID)"
  client_secret   = "YOUR SECRET)"
  tenant_id       = "YOUR TENANT)"
}
