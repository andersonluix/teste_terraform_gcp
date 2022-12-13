# Sets the "backend" used to store Terraform state.
# This is required to make continous delivery work.

terraform {
  backend "gcs" {
    bucket  = "projeto_teste_1234"
    prefix  = "terraform/state"
  }
}
