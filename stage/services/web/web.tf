provider "docker" {

}

resource "docker_container" "HelloWorld" {
  image = "${docker_image.nginx.latest}"
  name = "web-${count.index+1}"
  count = "${var.web_count}"
  ports {
    internal = "${var.web_port}"
  }
  volumes {
    container_path = "${var.container_path}"
    host_path = "${var.host_path}"
    read_only = true
  }
}

resource "docker_image" "nginx" {
    name = "nginx:latest"
}
