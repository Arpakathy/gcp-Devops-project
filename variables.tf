variable "project_name" {
  description = "My First Project" #The name of the GCP project"
  type        = string
}

variable "project_id" {
  description = "integral-vim-430223-b1"  #"The ID of the GCP project"
  type        = string
}

variable "region" {
  description = "The region for resources"
  type        = string
}

variable "instance_name" {
  description =  "Cloud-sql-Instance"  #"The name of the Cloud SQL instance"
  type        = string
}

variable "tier" {
  description = "db-f1-micro"  #"The tier for the Cloud SQL instance"
  type        = string
}

variable "database_name" {
  description =  "my-app-db" #"The name of the database"
  type        = string
}

variable "username" {
  description =  "admin" #"The username for the database"
  type        = string
}

variable "password" {
  description = "admin" #"The password for the database user"
  type        = string
  sensitive   = true
}

variable "bucket_name" {
  description = "The name of the storage bucket"
  type        = string
}

variable "bucket_location" {
  description = "us-central1" #"The location of the storage bucket"
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
  description = "my-app-service" #"The name of the Cloud Run service"
  type        = string
}

variable "domain_name" {
  description = "my-app-domain" #"The domain name for the Cloud Load Balancer"
  type        = string
}

variable "network_name" {
  description =  "Project-vpc" #"The name of the VPC network"
  type        = string
}

variable "cidr" {
  description = "192.168.1.0/24" # SEt the cidr range for your vpc
  type        = string
}

variable "subnetworks" {
  description = "subnet" #"The name of the subnetwork"
  type        = string
}
