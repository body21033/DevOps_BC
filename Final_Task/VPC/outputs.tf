output "private_network" {
  value = google_compute_network.vpc_network
}

output "sub_network" {
  value = google_compute_subnetwork.sub_network
}
