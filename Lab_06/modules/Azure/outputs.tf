#output IP-Address for Azure 
output "ip_address_for_azure" {
  value = azurerm_public_ip.azure_public_ip.ip_address
}