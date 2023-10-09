resource "google_storage_bucket" "gcpbucket" {
  name     = var.storvar.bname
  location = var.storvar.buloc

}