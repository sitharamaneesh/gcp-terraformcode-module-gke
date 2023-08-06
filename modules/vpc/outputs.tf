output "network_name" {
  description = "The name of the VPC network"
  value       = google_compute_network.vpc.name
}

output "subnet_name" {
  description = "The name of the VPC subnet"
  value       = google_compute_subnetwork.subnet.name
}

output "vpc_self_link" {
  description = "The self link of the VPC network"
  value       = google_compute_network.vpc.self_link
}

output "subnet_self_link" {
  description = "The self link of the VPC subnet"
  value       = google_compute_subnetwork.subnet.self_link
}

output "subnet_ip_cidr_range" {
  description = "The IP CIDR range of the VPC subnet"
  value       = google_compute_subnetwork.subnet.ip_cidr_range
}

output "cluster_secondary_range" {
  description = "The secondary range name and CIDR for the GKE cluster"
  value       = google_compute_subnetwork.subnet.secondary_ip_range[0]
}

output "services_secondary_range" {
  description = "The secondary range name and CIDR for the GKE services"
  value       = google_compute_subnetwork.subnet.secondary_ip_range[1]
}

