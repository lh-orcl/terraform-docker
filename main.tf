provider "docker" {

}

resource "docker_container" "HelloWorld" {
  image = "${docker_image.ubuntu.latest}"
  name = "Hello"
}

resource "docker_image" "ubuntu" {
    name = "ubuntu:latest"
}
