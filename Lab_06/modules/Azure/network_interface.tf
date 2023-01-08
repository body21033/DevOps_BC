#Create a network interface
resource "azurerm_network_interface" "azure_network" {
  name                = "azure-network-interface"
  location            = azurerm_resource_group.azure_resource_group.location
  resource_group_name = azurerm_resource_group.azure_resource_group.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.azure_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.azure_public_ip.id
  }
}

#Create a public ip
resource "azurerm_public_ip" "azure_public_ip" {
  name                = "azure-public-ip"
  location            = azurerm_resource_group.azure_resource_group.location
  resource_group_name = azurerm_resource_group.azure_resource_group.name
  allocation_method   = "Static"
}

#Create a network
resource "azurerm_virtual_network" "azure_virtual_network" {
  name                = "azure-virtual-network"
  address_space       = var.network_ip_address
  location            = var.location
  resource_group_name = azurerm_resource_group.azure_resource_group.name
}

#Create a subnet
resource "azurerm_subnet" "azure_subnet" {
  name                 = "azure-subnet"
  resource_group_name  = azurerm_resource_group.azure_resource_group.name
  virtual_network_name = azurerm_virtual_network.azure_virtual_network.name
  address_prefixes     = var.subnet_ip
}