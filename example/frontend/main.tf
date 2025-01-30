terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }

  backend "s3" {
    key            = "learn-terraform-migrate/example/frontend/terraform.tfstate"
  }
}

resource "random_string" "this" {
  count  = 3
  length = 32
}