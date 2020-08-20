locals {
    name = "development-resource-group"
    az_location = "West Europe"
    node_size = "Standard_D2_v2"
}
provider "azurerm" {
   features {}
}

resource "azurerm_resource_group" "main" {
    name = local.name
    location = local.az_location
}

resource "azurerm_container_group" "main" {
    name = "development-conatiner-group"
    location = azurerm_resource_group.main.location
    resource_group_name = azurerm_resource_group.main.name
    os_type = "Linux"
    ip_address_type = "public"
    dns_name_label = "aci-label"
}