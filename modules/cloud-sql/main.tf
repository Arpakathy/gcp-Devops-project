
locals {
  networks = ["192.168.1.2", "192.168.2.3"]
}

resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = var.tier

    ip_configuration {
      authorized_networks {
        name  = "public"
        value = var.authorized_network
      }
    }
  }
}

resource "google_sql_database" "default" {
  name     = var.database_name
  instance = google_sql_database_instance.default.name
  charset  = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_user" "default" {
  name     = var.username
  instance = google_sql_database_instance.default.name
  password = var.password
}

output "instance_connection_name" {
  value = google_sql_database_instance.default.connection_name
}
