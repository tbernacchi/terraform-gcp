resource "google_sql_database_instance" "master" {
  name             = "master-${random_id.db_name_suffix.hex}"
  project          = var.project_id
  region           = "southamerica-east1"
  database_version = "POSTGRES_14"

  settings {
    tier              = "db-f1-micro"
    availability_type = "REGIONAL"
    disk_size         = "100"
    backup_configuration {
      enabled = true
    }

    database_flags {
      name  = "cloudsql.iam_authentication"
      value = "on"
    }

    ip_configuration {
      ipv4_enabled = true
      authorized_networks {
        value = var.db_instance_access_cidr
      }
    }
    location_preference {
      zone = "southamerica-east1-a"
    }
  }
  deletion_protection = "false"
}
