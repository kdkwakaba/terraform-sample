variable "resouce_group_name" {
  type = string
  description = "The name of resource group for azure resources."
}

variable "base_name" {
  type = string
  description = "The system base name for azure network resources."
}

variable "location" {
  type = string
  default     = "japaneast"
  description = "The location for azure resources."
}

variable "tags" {
  type = map(any)
  description = "The tag name for azure resources."
  default = {}
}

variable "address_space" {
  type = list(string)
  description = "The address space for azure vitrual network."
}

variable "address_prefix" {
  type = list(string)
  description = "The address prefix for subnet."
}
