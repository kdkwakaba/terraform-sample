variable "base_name" {
  type = string
  description = "The name of azure resource group."
}

variable "location" {
  type = string
  default     = "japaneast"
  description = "The location for azure resource group."
}

variable "tags" {
  type = map(any)
  description = "The tags for azure resource group."
  default = {}
}
