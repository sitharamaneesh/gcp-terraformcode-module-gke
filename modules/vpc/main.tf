resource "google_compute_network" "vpc" {
  name                    = var.network_name
  auto_create_subnetworks = false
  project                 = var.project
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_ip_cidr_range
  region        = var.region
  network       = google_compute_network.vpc.name
  private_ip_google_access = true

  #secondary_ip_range {
  #  range_name    = var.cluster_secondary_range_name
  #  ip_cidr_range = "10.1.0.0/16"
  #}

  #secondary_ip_range {
   # range_name    = var.services_secondary_range_name
    #ip_cidr_range = "10.2.0.0/16"
  #}
}

