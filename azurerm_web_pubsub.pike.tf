resource "azurerm_web_pubsub" "pike" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name

  sku      = var.sku
  capacity = var.capacity

  public_network_access_enabled = false

  live_trace {
    enabled                   = true
    messaging_logs_enabled    = true
    connectivity_logs_enabled = false
  }
  identity {
    type = "SystemAssigned"
  }
}


variable "sku" {
  type    = string
  default = "Standard_S1"
}

variable "location" {
  type    = string
  default = "uksouth"
}

variable "rg_name" {
  type = string
}

variable "name" {
  type = string
}

variable "capacity" {
  type    = number
  default = 1
}
