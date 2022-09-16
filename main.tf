
provider "azurerm" {
  features{}
  
  subscription_id   = var.subscription_ID
  tenant_id         = var.tenant_ID
  client_id         = var.SP_AppID
  client_secret     = var.SP_Password
}

resource "azurerm_resource_group" "example" {
  name     = var.name
  location = var.location
}

resource "azurerm_resource_group" "example2" {
  name     = var.name
  location = var.location
}
