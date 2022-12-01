variable "tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
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
