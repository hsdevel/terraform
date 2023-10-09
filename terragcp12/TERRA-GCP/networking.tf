resource "google_compute_network" "vpc_network" {
  name = var.netvar.vpcname
}

resource "google_compute_network" "custom-gcpvpc" {
  name = var.netvar.custoname
  auto_create_subnetworks = false
}
resource "google_compute_subnetwork" "gcpsubnet" {
  name          = var.netvar.subname
  network       = google_compute_network.custom-gcpvpc.id
  ip_cidr_range = var.netvar.subnetcidr
  region        = var.netvar.subreg
}