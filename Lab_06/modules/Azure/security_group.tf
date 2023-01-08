#Create a network security group and a rule
resource "azurerm_network_security_group" "azure_network_security_group" {
  name                = "azure-network-security-group"
  location            = azurerm_resource_group.azure_resource_group.location
  resource_group_name = azurerm_resource_group.azure_resource_group.name

  security_rule {
    name                       = "SSH"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "HTTP"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

#Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "connection" {
  network_interface_id      = azurerm_network_interface.azure_network.id
  network_security_group_id = azurerm_network_security_group.azure_network_security_group.id
}