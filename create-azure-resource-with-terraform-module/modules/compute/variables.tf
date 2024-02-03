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

variable "network_interface_id" {
  type = string
  description = "The network interface id for azure vm"
}

variable "vm_size" {
  type = string
  description = "The vm size for azure vm."
}

variable "image_publisher" {
  type = string
  description = "The image name for azure vm."
}

variable "image_offer" {
  type = string
  description = "The image offer for azure vm."
}

variable "image_sku" {
  type = string
  description = "The image sku for azure vm."
}

variable "image_version" {
  type = string
  description = "The image version for azure vm."
}

variable "os_disk_cache" {
  type = string
  description = "The OS disk cache for azure vm disk."
}

variable "os_disk_create_option" {
  type = string
  description = "The OS disk create option for azure vm disk."
}

variable "os_managed_disk_type" {
  type = string
  description = "The OS managed disk type for azure vm disk."
}

variable "vm_computer_name" {
  type = string
  description = "The computer name for azure vm."
}

variable "vm_admin_username" {
  type = string
  sensitive = true
  description = "The admin username for azure vm."
}

variable "vm_admin_password" {
  type = string
  sensitive = true
  description = "The admin user password for azure vm."
}
