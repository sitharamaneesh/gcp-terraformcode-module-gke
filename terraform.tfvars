# terraform.tfvars
project = "nifty-altar-394805"
region = "us-east4"
network_name = "task2-vpc"
subnet_name = "task2-subnet"
subnet_ip = "10.0.0.0/24"
cluster_name = "cluster-dev"
node_count = 2
machine_type = "e2-medium"
oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
node_pool_name = "cluster-dev-nodepool"
enable_private_nodes = true
enable_private_endpoint = true
master_ipv4_cidr_block = "10.13.0.0/28"
cluster_secondary_range_name = "cluster-pods-range"
services_secondary_range_name = "services-range"
disk_size_gb =  "10"
