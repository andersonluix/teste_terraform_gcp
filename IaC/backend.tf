# Sets the "backend" used to store Terraform state.
# This is required to make continous delivery work.

terraform {
  backend "gcs" {
    bucket  = "projeto_teste_1234"
    prefix  = "terraform/state"
  }
}


data "terraform_remote_state" "foo" {
  backend = "gcs"
  config = {
    bucket  = "terraform-state"
    prefix  = "prod"
  }
}

resource "template_file" "bar" {
  template = "${greeting}"

  vars {
    greeting = "${data.terraform_remote_state.foo.greeting}"
  }
}
