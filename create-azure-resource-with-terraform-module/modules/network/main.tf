resource "azurerm_network_security_group" "nsg" {
  name                = "${var.base_name}-nsg"
  location            = var.location
  resource_group_name = var.resouce_group_name

  security_rule {
    name                       = local.ssh_rule_name
    priority                   = local.ssh_rule_priority
    direction                  = local.ssh_rule_direction
    access                     = local.ssh_rule_access
    protocol                   = local.ssh_rule_protocol
    source_port_range          = local.ssh_rule_source_port_range
    destination_port_range     = local.ssh_rule_destination_port_range
    source_address_prefix      = local.ssh_rule_source_address_prefix
    destination_address_prefix = local.ssh_rule_destination_address_prefix
  }

  tags = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.base_name}-vnet"
  location            = azurerm_network_security_group.nsg.location
  resource_group_name = azurerm_network_security_group.nsg.resource_group_name
  address_space       = var.address_space

  tags = var.tags
}

resource "azurerm_subnet" "snet" {
  name                 = "${var.base_name}-snet"
  resource_group_name  = azurerm_network_security_group.nsg.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefix
}

resource "azurerm_public_ip" "pip" {
  name                = "${var.base_name}-pip"
  location            = azurerm_network_security_group.nsg.location
  resource_group_name = azurerm_network_security_group.nsg.resource_group_name
  sku = "Standard"
  allocation_method   = "Static"

  tags = var.tags
}

resource "azurerm_network_interface" "nic" {
  name                = "${var.base_name}-nic"
  location            = azurerm_network_security_group.nsg.location
  resource_group_name = azurerm_network_security_group.nsg.resource_group_name

  ip_configuration {
    name                          = "${var.base_name}-nicconf"
    subnet_id                     = azurerm_subnet.snet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

resource "azurerm_network_interface_security_group_association" "nic-association" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}

locals {
  ssh_rule_name                       = "allow_ssh"
  ssh_rule_priority                   = 100
  ssh_rule_direction                  = "Inbound"
  ssh_rule_access                     = "Allow"
  ssh_rule_protocol                   = "Tcp"
  ssh_rule_source_port_range          = "*"
  ssh_rule_destination_port_range     = "22"
  ssh_rule_source_address_prefix      = "*"
  ssh_rule_destination_address_prefix = "*"
}
