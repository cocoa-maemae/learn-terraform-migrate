terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

resource "random_string" "this" {
    count = 3
    length = 32
}