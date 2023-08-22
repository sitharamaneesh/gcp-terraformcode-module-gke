resource "google_sql_database_instance" "read_replica1" {
  name                 = "wordpress-replica1"
  master_instance_name = var.master_instance_name
  region               = var.region3 
  database_version     = "MYSQL_8_0"
#  project              = var.project
  deletion_protection = false
  replica_configuration {
    failover_target = false
  }
 # depends_on =    [google_service_networking_connection.default]
  settings {
    tier              = var.tier
    availability_type = "REGIONAL"
    disk_size         = "10"
    backup_configuration {
      enabled = false
    }
    ip_configuration { 
      ipv4_enabled    = true
    }
  }
}
