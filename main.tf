provider "google" {
    project = var.project_id
    region  = var.region
}

resource "google_storage_bucket" "neds-bucket-8679_p8Nhwe76WrML7b64" {
  name                        = "neds-bucket-8679"
  location                    = "US-CENTRAL1"
  force_destroy               = true
  public_access_prevention    = "enforced"
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

resource "google_storage_bucket" "testing-12345_KeKqTmuP4M7qqTjm" {
  name                        = "testing-12345"
  location                    = "ASIA-EAST2"
  force_destroy               = true
  public_access_prevention    = "enforced"
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
