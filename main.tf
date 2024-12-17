terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.1.0"
    }
  }
}

provider "google" {
  project        = local.project_id
  region         = local.region
  zone           = local.zones[0]
}

resource "google_storage_bucket" "example_bucket" {
  name          = "test-project-373118-sample-bucket-n"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }
}
