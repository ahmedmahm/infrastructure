variable "name" {
    type = string
}

variable "az_location" {
    type = string
}

variable "azurerm_resource_group" "main" {
    location = var.az_location
    name = var.name
}

output "name" {
    value = 
}