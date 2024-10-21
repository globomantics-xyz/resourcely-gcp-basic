variable "region" {
  description = "The GCP region to deploy resources"
  type        = string
  default     = "us-central1"
}

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}