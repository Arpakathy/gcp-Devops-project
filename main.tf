provider "google" {
  project = var.project_id
  region  = var.region
}

#(Optional) Create a new project if needed

# module "project" {
#  project_name    = var.project_name
#  project_id      = var.project_id
#  org_id          = var.org_id
#  billing_account = var.billing_account
# }

# Create a Cloud SQL instance

module "cloud_sql" {
  source             = "./modules/cloud-sql"
  instance_name      = var.instance_name
  region             = var.region
  tier               = var.tier
  authorized_network = var.authorized_network
  database_name      = var.database_name
  username           = var.username
  password           = var.password
}

# Create a Cloud Storage bucket for static files

module "storage_bucket" {
  source      = "./modules/storage-bucket"
  bucket_name = var.bucket_name
  location    = var.bucket_location
}

output "sql_instance_connection_name" {
  value = module.cloud_sql.instance_connection_name
}

output "storage_bucket_name" {
  value = module.storage_bucket.bucket_name
}

module "artifact_registry" {
  source      = "./modules/artifact-registry"
  project_id  = var.project_id
  location    = var.location
  repository_id = var.repository_id
}

module "cloud_run" {
  source       = "./modules/cloud-run"
  project_id   = var.project_id
  repository_id = module.artifact_registry.repository_id
  location     = var.location
  region       = var.region
  service_name = var.service_name
}

module "load_balancer" {
  source       = "./modules/load-balancer"
  service_name = var.service_name
  domain_name  = var.domain_name
}

output "service_url" {
  description = "The URL of the Cloud Run service"
  value       = module.cloud_run.service_url
}

output "frontend_ip" {
  description = "The IP address of the load balancer"
  value       = module.load_balancer.frontend_ip
}
