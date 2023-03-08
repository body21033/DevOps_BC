resource "google_compute_network" "vpc_network" {
  name = "vpc_network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sub_network" {
  name          = "sub-network"
  ip_cidr_range = "10.2.0.0/16"
  region        = "europe-west1"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_global_address" "global_address" {
  name          = "global-ip-address"
  address_type  = "INTERNAL"
  purpose       = "VPC_PEERING"
  network       = google_compute_network.vpc_network.id
  prefix_length = 16
}

resource "google_service_networking_connection" "private_connection" {
  network                 = google_compute_network.vpc_network.id
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.global_address.name]
}
