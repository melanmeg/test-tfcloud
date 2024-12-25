resource "google_storage_bucket" "example_bucket" {
  name          = "test-project-373118-sample-bucket-2"
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
