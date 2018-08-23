variable "host_path" {
  description = "Path to web directory on Docker Host"
  default = "/var/www/nginx/terraform-docker/db"
}

variable "container_path" {
  description = "Web directory in web container"
  default = "/var/www/lib/mysql"
}

variable "db_count" {
  description = "Number of webs"
  default = 1
}

variable "db_port" {
  description = "Exposed web port"
  default = 3306
}

variable "db_user" {
  description = "User our webs connect with"
  default = "web"
}

variable "db_net" {
  description = "Allowed network access"
  default = ""
}
