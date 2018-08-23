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
    read_only = true
  }
  must_run = "true"
  output "db_address" {
    value = "${docker_container.mysql.ip_address}"
  }
}

resource "docker_image" "mysql" {
    name = "mysql:latest"
}
