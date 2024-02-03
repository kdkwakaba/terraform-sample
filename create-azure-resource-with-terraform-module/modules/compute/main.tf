resource "azurerm_virtual_machine" "main" {
  name                  = "${var.base_name}-vm"
  location              = var.location
  resource_group_name   = var.resouce_group_name
  network_interface_ids = [var.network_interface_id]
  
  vm_size               = var.vm_size

  storage_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  storage_os_disk {
    name              = "${var.base_name}-disk"
    caching           = var.os_disk_cache
    create_option     = var.os_disk_create_option
    managed_disk_type = var.os_managed_disk_type
  }

  os_profile {
    computer_name  = var.vm_computer_name
    admin_username = var.vm_admin_username
    admin_password = var.vm_admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  delete_os_disk_on_termination = true

  tags = var.tags
}
