output "AWS-IP" {
  value = module.AWS.instance_public_ip
}

output "Azure-IP" {
  value = module.Azure.ip_address_for_azure
}