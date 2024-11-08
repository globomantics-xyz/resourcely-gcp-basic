provider "google" {
    project = var.project_id
    region  = var.region
}

resource "google_storage_bucket" "tacos_STKpbvEB5WDKzk4W" {
  name                        = "tacos"
  location                    = "US-CENTRAL1"
  force_destroy               = true
  public_access_prevention    = "inherited"
  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 7
    }

    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
