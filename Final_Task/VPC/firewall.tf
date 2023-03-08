resource "google_compute_firewall" "ssh-rules" {
  project     = "kubernetes-379416"
  name        = "ssh-rules"
  network     = "google_compute_network.vpc_network.name"
  description = "Creates firewall rule for ssh"

  allow {
    protocol  = "tcp"
    ports     = ["22"]
  }

  source_tags = ["0.0.0.0/0"]
  target_tags = ["ssh"]
}

resource "google_compute_firewall" "http-rules" {
  project     = "kubernetes-379416"
  name        = "http-rules"
  network     = "google_compute_network.vpc_network.name"
  description = "Creates firewall rule for http"

  allow {
    protocol  = "icmp"
  }

  allow {
    protocol  = "tcp"
    ports     = ["80", "443"]
  }

  source_tags = ["0.0.0.0/0"]
  target_tags = ["http"]
}
