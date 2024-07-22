variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "domain_name" {
  description = "The domain name for the Cloud Load Balancer"
  type        = string
}
