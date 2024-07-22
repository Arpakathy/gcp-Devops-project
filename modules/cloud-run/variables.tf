variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "repository_id" {
  description = "The ID of the Artifact Registry repository"
  type        = string
}

variable "location" {
  description = "The location of the Artifact Registry repository"
  type        = string
  default     = "us-central1"
}

variable "region" {
  description = "The region for Cloud Run"
  type        = string
  default     = "us-central1"
}

variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}
