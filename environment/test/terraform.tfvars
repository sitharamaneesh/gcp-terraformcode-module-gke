# terraform.tfvars
project = "nifty-altar-394805"
region = "southamerica-east1"
network_name = "task2-vpc-test"
subnet_name = "task2-subnet-test"
subnet_ip_cidr_range = "192.168.0.0/16"
cluster_name = "cluster-test"
node_count = 1
machine_type = "e2-medium"
oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
node_pool_name = "cluster-test-nodepool"
enable_private_nodes = true
enable_private_endpoint = true
master_ipv4_cidr_block = "10.13.0.0/28"
cluster_ipv4_cidr_block = "10.11.0.0/21"
services_ipv4_cidr_block = "10.12.0.0/21"
disk_size_gb =  "10"
