#Create a virtual machine
resource "azurerm_linux_virtual_machine" "azure_vm" {
  name                  = "azure-vm"
  resource_group_name   = azurerm_resource_group.azure_resource_group.name
  location              = azurerm_resource_group.azure_resource_group.location
  size                  = var.size
  admin_username        = "uran238"
  user_data           = filebase64(var.user_data)
  network_interface_ids = [
    azurerm_network_interface.azure_network.id,
  ]

  admin_ssh_key {
    username   = "uran238"
    public_key = file(var.ssh_key)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts" 
    version   = "latest"
  }
}
