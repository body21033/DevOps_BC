resource "google_sql_database_instance" "wordpress_instance" {
 database_version = "MYSQL_8_0"
 name             = "wordpress_instance"
 region           = "europe-west1"

 depends_on = [google_service_networking_connection.private_connection]

 settings {
   availability_type = "REGIONAL"
   disk_autoresize   = false
   disk_size         = 48
   disk_type         = "PD_HDD"
   tier              = "db-g1-small"

   backup_configuration {
     enabled            = true
     start_time         = "02:00"
     binary_log_enabled = true
   }

   ip_configuration {
     ipv4_enabled    = false
     private_network = "google_compute_network.vpc_network.id"
   }

   database_flags {
     name  = "max_connections"
     value = 500
   }
 }
  deletion_protection  = "false"
}

resource "google_sql_database" "wordpress_db" {
 name      = "wordpress_db"
 instance  = google_sql_database_instance.wordpress_instance.name
 charset   = "utf8"
 collation = "utf8_general_ci"
}


resource "google_sql_user" "user_db" {
 name     = var.db-user-name
 password = var.db-user-password
 instance = google_sql_database_instance.wordpress_instance.name
}
