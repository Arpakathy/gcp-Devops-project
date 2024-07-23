variable "instance_name" {
  description = "The name of the Cloud SQL instance"
  type        = string
}

variable "region" {
  description = "The region for the Cloud SQL instance"
  type        = string
}

variable "tier" {
  description = "The tier for the Cloud SQL instance"
  type        = string
}

variable "authorized_networks" {
  description = "The authorized networks for the Cloud SQL instance"
  type        = list(string)
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
