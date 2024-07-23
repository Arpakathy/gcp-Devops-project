variable "network_name" {
  description =  "Project-vpc" #"The name of the VPC network"
  type        = string
}

variable "cidr" {
  description = "192.168.1.0/24" # SEt the cidr range for your vpc
  type        = string
}

variable "subnetwork_name" {
  description = "The name of the subnetwork"
  type        = string
}

variable "region" {
  description = "The region for the subnetwork"
  type        = string
}
