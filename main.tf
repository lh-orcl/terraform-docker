provider "docker" {

}

resource "docker_container" "HelloWorld" {
  image = "${docker_image.nginx.latest}"
  name = "Hello"
  count = 2
  ports {
    internal = 80
  }
  volumes {
    container_path = "/usr/share/nginx/html"
    host_path = "/var/www/nginx/terraform-docker/www"
    read_only = true
  }
}

resource "docker_image" "nginx" {
    name = "nginx:latest"
}
