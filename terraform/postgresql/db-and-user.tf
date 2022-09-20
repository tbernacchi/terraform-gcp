resource "google_sql_user" "tadeu" {
  depends_on = [
    google_sql_database_instance.master
  ]
  name     = "tadeu"
  instance = google_sql_database_instance.master.name
  password = var.db_user_password
  project  = var.project_id
}

resource "google_sql_database" "app" {
  depends_on = [
    google_sql_user.tadeu 
  ]
  name     = "app"
  instance = google_sql_database_instance.master.name 
  project  = var.project_id
}
