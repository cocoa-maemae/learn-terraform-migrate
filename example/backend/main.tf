terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }

  backend "s3" {
    bucket         = var.bucket_name
    key            = "learn-terraform-migrate/example/backend/terraform.tfstate"
    dynamodb_table = var.dynamodb_table
    region         = var.region
  }
}

resource "random_string" "this" {
  count  = 3
  length = 32
}