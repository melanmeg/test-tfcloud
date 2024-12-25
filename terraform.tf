terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.1.0"
    }
  }

  backend "gcs" {
    bucket  = "test-project-373118-sample-bucket"
    prefix  = "test-project-373118/state"
  }
}
