
provider "azurerm" {
  features{}
}

# Resource Group
resource "azurerm_resource_group" "example" {
  name     = "azure-vcs-storage"
  location = "UK South"
}

# Storage Account
resource "azurerm_storage_account" "example" {
  name                     = "danpvcsstorage"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "production"
  }
}

# Blob Storage Container
resource "azurerm_storage_container" "example" {
  name                  = "danpvcsblob"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}
