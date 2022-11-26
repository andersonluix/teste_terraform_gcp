#VPC teste
provider "google" {
  project = "pro-lattice-368817"
  region  = "us-west4"
  zone    = "us-west4-a"
}

variable "nome" {
  type = string
}

# VPC
resource "google_compute_network" "vpc2" {
  name                    =  var.nome    #${{ env.VPCNAME }}
  auto_create_subnetworks = "false"
}
