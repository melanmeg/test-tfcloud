terraform {
  cloud {
    organization = "melanmeg"
    hostname     = "app.terraform.io"

    workspaces {
      name = "test-tfcloud-workspace"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.1.0"
    }
  }
}
