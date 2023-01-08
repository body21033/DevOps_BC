variable "user_data" {
  type    =  string
  default = "installing.sh"
}

variable "location" {
  default = "West Europe"
}

variable "network_ip_address" {
  default = ["10.0.0.0/16"]
}

variable "subnet_ip" {
  default = ["10.0.10.0/24"]
}

variable "size" {
  default = "Standard_B1s"
}

variable "ssh_key" {
  default = "ssh_key/id_rsa.pub"
}

variable "storage_account_type" {
 default = "Standard_LRS"
}