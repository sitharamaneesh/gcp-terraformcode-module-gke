resource "google_sql_database" "database" {
   name    = var.database
   instance = google_sql_database_instance.instance.name 
}

# See versions at https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/sql_database_instance#database_version
resource "google_sql_database_instance" "instance" {
  name  = var.database_instance
  region           = var.region
  database_version = "MYSQL_8_0"
  settings {
    tier = var.tier
  }

  deletion_protection  = "false"
}
