resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  location = var.location

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 365
    }
  }

  versioning {
    enabled = true
  }

  uniform_bucket_level_access = true
}

output "bucket_name" {
  value = google_storage_bucket.bucket.name
}
