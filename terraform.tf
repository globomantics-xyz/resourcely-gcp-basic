terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.7"
    }
  }

  backend "gcs" {
    bucket = "terraform-state-20241021"
    prefix = "terraform/state"
  }
}