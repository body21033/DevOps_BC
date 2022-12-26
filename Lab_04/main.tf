#---------------------------------------------------------------------
#My Terraform
# Using Terraform with Google Cloud Platform
#
# Was made by Bohdan Chumachenko
#----------------------------------------------------------------------

//export GOOGLE_CLOUD_KEYFILE_JSON="famous-daylight-340317-e267a6874224.json"

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  credentials = file("famous-daylight-340317-e267a6874224.json")
  project     = "famous-daylight-340317"
  region      = "europe-west3"
  zone        = "europe-west3-b"
}

# Creating Instance
resource "google_compute_instance" "my_server" {
  name         = "first-server"
  machine_type = "e2-medium"
  tags = ["http-server", "https-server"]

    boot_disk {
    initialize_params {
      size  = "40"
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  metadata_startup_script =  file("web-server.sh")

  network_interface {
    network = google_compute_network.vpc_network1.name
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network1" {
  name = "vpc-firewall1"
}

resource "google_compute_firewall" "ssh" {
  name          = "allow-ssh1"
  network       = google_compute_network.vpc_network1.name
  source_ranges = ["0.0.0.0/0"]
  direction     = "INGRESS"
  priority      = "65534"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}

resource "google_compute_firewall" "http" {
  name          = "allow-http1"
  network       = google_compute_network.vpc_network1.name
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
  direction     = "INGRESS"
  priority      = "1000"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}

resource "google_compute_firewall" "https" {
  name          = "allow-https1"
  network       = google_compute_network.vpc_network1.name
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https-server"]
  direction     = "INGRESS"
  priority      = "1000"

  allow {
    protocol = "tcp"
    ports    = ["443"]
  }
}
