variable "base_name" {
  type = string
  description = "The name of azure resource group."
  default = "stagemoduledemo"
}

variable "location" {
  type = string
  description = "The location for azure resource group."
  default     = "japaneast"
}

variable "tags" {
  type = map(any)
  description = "The tags for azure resource group."
  default = {
    environment: "Staging"
  }
}

variable "address_space" {
  type = list(string)
  description = "The address space for azure vitrual network."
  default = [ "10.0.0.0/16" ]
}

variable "address_prefix" {
  type = list(string)
  description = "The address prefix for subnet."
  default = [ "10.0.0.0/24" ]
}

variable "vm_size" {
  type = string
  description = "The vm size for azure vm."
  default = "Standard_DS1_v2"
}

variable "image_publisher" {
  type = string
  description = "The image publisher for azure vm."
  default = "Canonical"
}

variable "image_offer" {
  type = string
  description = "The image offer for azure vm."
  default = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  type = string
  description = "The image sku for azure vm."
  default = "22_04-lts"
}

variable "image_version" {
  type = string
  description = "The image version for azure vm."
  default = "latest"
}

variable "os_disk_cache" {
  type = string
  description = "The OS disk cache for azure vm disk."
  default = "ReadWrite"
}

variable "os_disk_create_option" {
  type = string
  description = "The OS disk create option for azure vm disk."
  default = "FromImage"
}

variable "os_managed_disk_type" {
  type = string
  description = "The OS managed disk type for azure vm disk."
  default = "Standard_LRS"
}

variable "vm_computer_name" {
  type = string
  description = "The vm computer name for azure vm."
  default = "prodmoduledemo"
}

variable "vm_admin_username" {
  type = string
  description = "The vm admin username for azure vm."
  default = "moduledemouser"
}

variable "vm_admin_password" {
  type = string
  description = "The vm admin password for azure vm."
  default = "!QAZWS#ED4gh"
}
