module "vpc" {
  source = "../../modules/vpc"
  project = var.project
  region = var.region
  network_name = var.network_name
  subnet_name = var.subnet_name
  subnet_ip_cidr_range = var.subnet_ip_cidr_range
#  cluster_secondary_range_name = var.cluster_secondary_range_name
#  services_secondary_range_name = var.services_secondary_range_name
}

module "gke" {
  source = "../../modules/gke"
  project = var.project
  region = var.region
  cluster_name = var.cluster_name
  network = module.vpc.network_name
  subnetwork = module.vpc.subnet_name
  node_count = var.node_count
  machine_type = var.machine_type
  oauth_scopes = var.oauth_scopes
  node_pool_name = var.node_pool_name
  enable_private_nodes = var.enable_private_nodes
  enable_private_endpoint = var.enable_private_endpoint
  master_ipv4_cidr_block = var.master_ipv4_cidr_block
  cluster_ipv4_cidr_block = var.cluster_ipv4_cidr_block
  services_ipv4_cidr_block = var.services_ipv4_cidr_block
  disk_size_gb = var.disk_size_gb
}

