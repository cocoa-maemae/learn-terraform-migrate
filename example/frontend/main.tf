terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }

  backend "s3" {
    bucket         = "learn-terraform-migrate-ee83uysoydtyn0io"
    key            = "learn-terraform-migrate/example/frontend/terraform.tfstate"
    dynamodb_table = "learn-terraform-migrate-ee83uysoydtyn0io"
    region         = "us-east-2"
  }
}

resource "random_string" "this" {
  count  = 3
  length = 32
}