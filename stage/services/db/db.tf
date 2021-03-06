provider "docker" {

}

resource "docker_container" "HelloDB" {
  image = "${docker_image.mysql.latest}"
  name = "db-${count.index+1}"
  count = "${var.db_count}"
  ports {
    internal = "${var.db_port}"
  }
  volumes {
    container_path = "${var.container_path}"
    host_path = "${var.host_path}"
    read_only = false
  }
  must_run = "true"
  restart = "always"
  networks = ["container_network"]
}

resource "docker_image" "mysql" {
    name = "mysql:latest"
}

#output "db_address" {
#  value = "${docker_container.container.ip_address}"
#}
