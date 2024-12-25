terraform {
  backend "gcs" {
    bucket  = "test-project-373118-sample-bucket-2"
    prefix  = "test-project-373118/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.1.0"
    }
  }
}
