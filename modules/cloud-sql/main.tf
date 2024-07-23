resource "google_sql_database_instance" "default" {
  name             = var.instance_name
  database_version = "MYSQL_8_0"
  region           = var.region

  settings {
    tier = var.tier

    ip_configuration {
      authorized_networks {
          name  = "default-vpc-network"
          value = module.vpc.subnetwork_cidr
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
