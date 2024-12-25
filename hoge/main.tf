terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.1.0"
    }
  }

  backend "gcs" {
    bucket  = "test-project-373118-sample-bucket-2"
    prefix  = "test-project-373118/state"
  }
}

provider "google" {
  project        = local.project_id
  region         = local.region
  zone           = local.zones[0]
}

resource "google_storage_bucket" "example_bucket2" {
  name          = "test-project-373118-sample-bucket-23"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }
}
