variable "db-user-name" {
  default = "wordpress"
}

variable "db-user-password" {
  default = "wordpress"
}

variable "vmm" {
  default = "google_compute_network.vpc_network.id"
}

variable "vss" {
  default = "google_service_networking_connection.private_connection"
}
