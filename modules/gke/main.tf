resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  remove_default_node_pool = true 
  private_cluster_config {
    enable_private_endpoint = var.enable_private_endpoint
    enable_private_nodes    = var.enable_private_nodes
    master_ipv4_cidr_block  = var.master_ipv4_cidr_block
  }
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = var.cluster_ipv4_cidr_block
    services_ipv4_cidr_block = var.services_ipv4_cidr_block
  }

  network    = var.network
  subnetwork = var.subnetwork

  node_pool {
    name       = var.node_pool_name
    node_count = var.node_count

    node_config {
      machine_type = var.machine_type
      oauth_scopes = var.oauth_scopes
      disk_size_gb   = var.disk_size_gb
    }
  }
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "10.0.0.7/32"
      display_name = "net1"
    }

  }

}

