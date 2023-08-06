variable "project" {
  description = "The ID of the project in which resources will be created"
  type = string
}

variable "region" {
  description = "The region in which resources will be created"
  type = string
}

variable "network_name" {
  description = "The name of the network"
  type = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type = string
}

variable "cluster_secondary_range_name" {
  description = "The name of the secondary range for the GKE cluster"
  type = string
}

variable "services_secondary_range_name" {
  description = "The name of the secondary range for the GKE services"
  type = string
}

