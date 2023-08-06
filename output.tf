output "gke_cluster_name" {
  description = "The name of the GKE cluster"
  value = module.gke.cluster_name
}

output "gke_cluster_location" {
  description = "The location of the GKE cluster"
  value = module.gke.cluster_location
}

output "gke_cluster_endpoint" {
  description = "The endpoint of the GKE cluster"
  value = module.gke.cluster_endpoint
}

output "gke_cluster_master_auth" {
  description = "The master_auth configuration block for the GKE cluster"
  value = module.gke.cluster_master_auth
  sensitive = true
}

output "gke_cluster_master_version" {
  description = "The version of the master in the GKE cluster"
  value = module.gke.cluster_master_version
}

output "gke_cluster_node_version" {
  description = "The version of the nodes in the GKE cluster"
  value = module.gke.cluster_node_version
}
#output "disk_size_gb" {
 # description = "The disk size"
 # value = module.gke.disk_size_gb
#}
