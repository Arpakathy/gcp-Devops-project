resource "google_artifact_registry_repository" "docker_repository" {
  provider      = google
  project       = var.project_id
  location      = var.location
  repository_id = var.repository_id
  description   = "Docker repository in Artifact Registry for our php image"
  format        = "DOCKER"
}

output "repository_id" {
  description = "The ID of the Artifact Registry repository"
  value       = google_artifact_registry_repository.docker_repository.repository_id
}

output "repository_url" {
  description = "The URL of the Artifact Registry repository"
  value       = google_artifact_registry_repository.docker_repository.url
}
