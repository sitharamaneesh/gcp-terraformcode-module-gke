resource "google_sql_database" "database" {
   name    = var.database
   instance = google_sql_database_instance.instance.name 
   charset = "utf8"
   collation = "utf8_general_ci"
}

# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance" {
  name = "wordpress-${var.region}"
  region           = var.region
  database_version = "MYSQL_8_0"
  settings {
    tier = var.tier
    availability_type = "REGIONAL"
    disk_size         = "10"
     backup_configuration {
      enabled = true
      binary_log_enabled = true
    }
    ip_configuration {
      ipv4_enabled    = true
    }
  }

  deletion_protection  = "false"
}
resource "google_sql_user" "users" {
name = "root"
instance = "${google_sql_database_instance.instance.name}"
host = "%"
password = var.password
}
