provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

# VPC
resource "google_compute_network" "vpc2" {
  name                    = "${var.project_name}-vpc"
  auto_create_subnetworks = "false"
}
