resource "google_sql_database_instance" "read_replica" {
  name                 = "replica-${random_id.db_name_suffix.hex}"
  master_instance_name = "${var.project_id}:${google_sql_database_instance.master.name}"
  region               = "southamerica-east1"
  database_version     = "POSTGRES_14"

  replica_configuration {
    failover_target = false
  }

  settings {
    tier              = "db-f1-micro"
    availability_type = "ZONAL"
    disk_size         = "100"
    backup_configuration {
      enabled = false
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
