variable "container_path" {
  description = "Path to web directory on Docker Host"
  default = "/var/www/nginx/terraform-docker/db"
}

variable "host_path" {
  description = "Web directory in web container"
  default = "/var/www/nginx/terraform-docker/www"
}

variable "db_count" {
  description = "Number of webs"
  default = 1
}

variable "web_port" {
  description = "Exposed web port"
  default = 3306
}
