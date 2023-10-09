terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.0.0"
    }
  }
}

provider "google" {
  project     = var.terpro.idpro
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "authgcp/keys.json"
}