resource "google_compute_instance" "gceserver" {
    name = var.gcevar.gcename
    zone = var.gcevar.gcezone
    machine_type = var.gcevar.gcetype
    network_interface {
      network = google_compute_network.custom-gcpvpc.id
      subnetwork = google_compute_subnetwork.gcpsubnet.id
    }
    boot_disk {
      initialize_params {
        image = var.gcevar.gceimage
        size = 20
      }
    }

}