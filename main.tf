data "template_file" "windows_client_install" {
  template = "${file("${path.module}/scripts/client_install.ps1")}"
}

resource "google_compute_instance" "windows-client" {
  name         = "windows-client"
  machine_type = "g1-small"
  zone         = "${var.region}"

  tags = ["windows-ai-node"]
  
  boot_disk {
    initialize_params {
      image = "windows-2019"
    }
  }

    metadata {
    windows-startup-script-ps1 = "${data.template_file.windows_client_install.rendered}"
    }
  
  network_interface {
    network = "default"
    access_config {
    }
  }

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

}

