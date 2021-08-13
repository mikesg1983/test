terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  #credentials = file("/home/mxsystem/learn-terraform-gcp/sa-vpc-build.json")
  credentials = file("https://storage.cloud.google.com/quantum-device-322319-tfstate/jenkins/sa-vpc-build.json")

  project = "quantum-device-322319"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
