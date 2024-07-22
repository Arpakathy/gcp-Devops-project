variable "project_name" {
  description = "My First Project" #The name of the GCP project"
  type        = string
}

variable "project_id" {
  description = "integral-vim-430223-b1"  #"The ID of the GCP project"
  type        = string
}

variable "create_project" {
  description = "Whether to create a new project"
  type        = bool
  default     = false
}

variable "org_id" {
  description = "The organization ID"
  type        = string
}

variable "billing_account" {
  description = "The billing account ID"
  type        = string
}

variable "region" {
  description = "The region for resources"
  type        = string
}

variable "instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
}

variable "tier" {
  description = "The tier for the Cloud SQL instance"
  type        = string
}

variable "authorized_network" {
  description = "The authorized network for the Cloud SQL instance"
  type        = string
}

variable "database_name" {
  description = "The name of the database"
  type        = string
}

variable "username" {
  description = "The username for the database"
  type        = string
}

variable "password" {
  description = "The password for the database user"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
}

variable "bucket_location" {
  description = "The location of the storage bucket"
  type        = string
}

variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
}

variable "location" {
  description = "The location of the Artifact Registry repository"
  type        = string
  default     = "us-central1"
}

variable "repository_id" {
  description = "The ID of the Artifact Registry repository"
  type        = string
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

variable "domain_name" {
  description = "The domain name for the Cloud Load Balancer"
  type        = string
}
