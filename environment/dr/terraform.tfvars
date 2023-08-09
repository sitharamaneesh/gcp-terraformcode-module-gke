# terraform.tfvars
project = "nifty-altar-394805"
region = "us-central1"
network_name = "task2-vpc-dr"
subnet_name = "task2-subnet-dr"
subnet_ip_cidr_range = "192.168.0.0/16"
cluster_name = "cluster-dr"
node_count = 1
machine_type = "e2-medium"
oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
node_pool_name = "cluster-dr-nodepool"
enable_private_nodes = false
enable_private_endpoint = false
master_ipv4_cidr_block = "10.13.0.0/28"
cluster_ipv4_cidr_block = "10.11.0.0/21"
services_ipv4_cidr_block = "10.12.0.0/21"
disk_size_gb =  "10"
