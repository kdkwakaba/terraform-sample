terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource Group module
module "resource_group" {
  source = "../../modules/resource_group"

  base_name = var.base_name
  location = var.location
  tags = var.tags
}

# Network module
module "network" {
  source = "../../modules/network"

  base_name = var.base_name
  resouce_group_name = module.resource_group.resource_group_name
  address_space = var.address_space
  address_prefix = var.address_prefix
  tags = module.resource_group.tags
}

module "compute" {
  source = "../../modules/compute"

  base_name = var.base_name
  resouce_group_name = module.resource_group.resource_group_name
  network_interface_id = module.network.network_interface
  vm_size = var.vm_size

  image_publisher = var.image_publisher
  image_offer = var.image_offer
  image_sku = var.image_sku
  image_version = var.image_version

  os_disk_cache = var.os_disk_cache
  os_disk_create_option = var.os_disk_create_option
  os_managed_disk_type = var.os_managed_disk_type

  vm_computer_name = var.vm_computer_name
  vm_admin_username = var.vm_admin_username
  vm_admin_password = var.vm_admin_password

  tags = module.resource_group.tags
}
