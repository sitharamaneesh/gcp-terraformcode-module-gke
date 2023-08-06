output "cluster_name" {
  description = "The name of the GKE cluster"
  value       = google_container_cluster.primary.name
}

output "cluster_location" {
  description = "The location of the GKE cluster"
  value       = google_container_cluster.primary.location
}

output "cluster_endpoint" {
  description = "The endpoint of the GKE cluster"
  value       = google_container_cluster.primary.endpoint
}

output "cluster_master_auth" {
  description = "The master_auth configuration block for the GKE cluster"
  value       = google_container_cluster.primary.master_auth
}

output "cluster_master_version" {
  description = "The version of the master in the GKE cluster"
  value       = google_container_cluster.primary.master_version
}

output "cluster_node_version" {
  description = "The version of the nodes in the GKE cluster"
  value       = google_container_cluster.primary.node_version
}
#output "disk_size_gb" {
#  description = "The disk size"
#  value = google_container_cluster.primary.disk_size_gb
#}
