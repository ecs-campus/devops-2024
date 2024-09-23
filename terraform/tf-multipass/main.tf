resource "multipass_instance" "test" {
  name  = "instance-1234"
  cpus  = 2
  image = "jammy"
}

provider "multipass" {}

terraform {
  required_providers {
    multipass = {
      source  = "larstobi/multipass"
      version = "~> 1.0.0"
    }
  }
}
