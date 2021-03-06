provider "google" {
  credentials = file("sa-vpc-build.json")
  project     = "quantum-device-322319"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
