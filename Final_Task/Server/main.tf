resource "google_compute_instance" "my_server" {
  name         = "my-server"
  machine_type = "e2-custom-4-8192"
  tags = ["http", "ssh"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      size = "40"
   }
 }

  network_interface {
    network = "google_compute_network.vpc_network.id"
    subnetwork = "google_compute_subnetwork.sub_network.id"
    access_config {
    }
  }
  metadata = {
    ssh-keys = "${var.ssh_username}:${file("/home/${var.ssh_username}/.ssh/chumack.pub")}"
  }
}
