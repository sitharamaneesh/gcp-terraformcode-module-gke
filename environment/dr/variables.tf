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

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type = string
}

variable "node_count" {
  description = "The number of nodes in the GKE cluster"
  type = number
}

variable "machine_type" {
  description = "The machine type of the GKE cluster nodes"
  type = string
}

variable "oauth_scopes" {
  description = "The OAuth scopes for the GKE cluster nodes"
  type = list(string)
}
variable "disk_size_gb" {
  description = "The size of disk"
  type =number
}
variable "node_pool_name" {
  description = "The name of the node pool in the GKE cluster"
  type = string
}

variable "enable_private_nodes" {
  description = "Enables private nodes in the GKE cluster"
  type = bool
}

variable "enable_private_endpoint" {
  description = "Enables private endpoint in the GKE cluster"
  type = bool
}

variable "subnet_ip_cidr_range" {
  description = "Subnet IP"
  type = string
}
variable "master_ipv4_cidr_block" {
  description = "The CIDR block for the GKE master"
  type = string
}

variable "cluster_ipv4_cidr_block" {
  description = "The name of the secondary range for the GKE cluster"
  type = string
}

variable "services_ipv4_cidr_block" {
  description = "The name of the secondary range for the GKE services"
  type = string
}

