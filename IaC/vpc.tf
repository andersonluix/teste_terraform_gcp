#VPC teste
provider "google" {
  project = "pro-lattice-368817"
  region  = "us-west4"
  zone    = "us-west4-a"
}

# VPC
resource "google_compute_network" "vpc2" {
  name                    =  $TF_VAR_env    #${{ env.VPCNAME }}
  auto_create_subnetworks = "false"
}
